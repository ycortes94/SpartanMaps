//
//  HomeViewController.swift
//  FirebaseApp
//
//  Created by Yosimy Cortes on 2018-03-13.
//  Copyright © 2018 Yosimy Cortes. All rights reserved.
//

import MapKit
import UIKit
import Firebase

class HomeViewController:UIViewController, UITableViewDelegate {
    var tableView:UITableView!
    
    @IBOutlet weak var MapView: MKMapView!
    
    @IBOutlet weak var UserProfile: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // set initial location in San Jose State
        let initialLocation = CLLocation(latitude: 37.3352, longitude: -121.8811)
        let regionRadius: CLLocationDistance = 1000
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
            MapView.setRegion(coordinateRegion, animated: true)
        }
        
        centerMapOnLocation(location: initialLocation)
    }
    
    @IBAction func handleLogout(_ sender:Any) {
        try! Auth.auth().signOut()
    }
}


