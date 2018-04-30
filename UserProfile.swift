//
//  User.swift
//  FirebaseApp
//
//  Created by Yosimy Cortes on 2018-03-13.
//  Copyright © 2018 Yosimy Cortes. All rights reserved.
//

import Foundation
import UIKit

class UserProfile {
    @IBOutlet weak var dismissButton: UIButton!
    var uid:String
    var username:String
    var photoURL:URL

//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    init(uid:String, username:String,photoURL:URL) {
        self.uid = uid
        self.username = username
        self.photoURL = photoURL
    }
}

