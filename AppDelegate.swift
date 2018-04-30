//
//  AppDelegate.swift
//  SpartanMap
//
//  Created by Yosimy Cortes on 3/27/18.
//  Copyright © 2018 Yosimy Cortes. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn
import FBSDKCoreKit

let primaryColor = UIColor(red: 210/255, green: 109/255, blue: 180/255, alpha: 1)
let secondaryColor = UIColor(red: 52/255, green: 148/255, blue: 230/255, alpha: 1)

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, GIDSignInDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        FirebaseApp.configure()
        
        FBSDKApplicationDelegate.sharedInstance().application(application, didFinishLaunchingWithOptions: launchOptions)
        
        GIDSignIn.sharedInstance().clientID = FirebaseApp.app()?.options.clientID
        
        GIDSignIn.sharedInstance().delegate = self
        // Override point for customization after application launch.
        
        let authListener = Auth.auth().addStateDidChangeListener { auth, user in
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            if user != nil {
                UserService.observeUserProfile(user!.uid) { userProfile in
                    UserService.currentUserProfile = userProfile
                }
                //
                let controller = storyboard.instantiateViewController(withIdentifier: "MainTabBarController") as! UITabBarController
                self.window?.rootViewController = controller
                self.window?.makeKeyAndVisible()
            } else {
                UserService.currentUserProfile = nil
                
                // menu screen
                let controller = storyboard.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
                self.window?.rootViewController = controller
                self.window?.makeKeyAndVisible()
            }
        }
        
        return true
    }
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        
        if let err = error {
            print("Failed to log in with Google: \(err)")
            return
        }
        print("Successfully logged in with Goodle: \(user)")
        
        guard let idToken = user.authentication.idToken else { return }
        guard let accessToken = user.authentication.accessToken else { return }
        let credentials = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: accessToken)
        
        Auth.auth().signIn(with: credentials, completion: { (user, error) in
            if let err = error {
                print("Failed to create a user with google sign in methond: \(err)")
                return
            }
            
            guard let uid = user?.uid else { return }
            print("Successfully logged into Firebase with Google", uid)
        })
    }
    
    // [START disconnect_handler]
    func sign(_ signIn: GIDSignIn!, didDisconnectWith user: GIDGoogleUser!,
              withError error: Error!) {
        // Perform any operations when the user disconnects from app here.
        // [START_EXCLUDE]
        NotificationCenter.default.post(
            name: Notification.Name(rawValue: "ToggleAuthUINotification"),
            object: nil,
            userInfo: ["statusText": "User has disconnected."])
        try! Auth.auth().signOut()
        // [END_EXCLUDE]
    }
    
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        
        let handled  = FBSDKApplicationDelegate.sharedInstance().application(app, open: url, sourceApplication: options[UIApplicationOpenURLOptionsKey.sourceApplication] as! String!, annotation: options[UIApplicationOpenURLOptionsKey.annotation])
        
        GIDSignIn.sharedInstance().handle(url, sourceApplication: options[UIApplicationOpenURLOptionsKey.sourceApplication] as! String!, annotation: options[UIApplicationOpenURLOptionsKey.annotation])
        
        return handled
        
    }
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

