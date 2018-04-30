//
//  BuildingsModel.swift
//  SpartanMap
//
//  Created by Conrad Bormann on 4/29/18.
//  Copyright © 2018 Conrad Bormann. All rights reserved.
//

import Foundation
import UIKit

class BuildingsModel
{
    @IBOutlet weak var dismissButton: UIButton!
    var buildingName:String
    var clubs = [String]()
    var teachers = [String]()
    var admin = [String]()
    var departments = [String]()
    
    //    required init?(coder aDecoder: NSCoder) {
    //        fatalError("init(coder:) has not been implemented")
    //    }
    
    init(buildingName:String, clubs:[String], teachers:[String], admin:[String], departments:[String])
    {
        self.buildingName = buildingName
        self.clubs = [""]
        self.teachers = [""]
        self.admin = [""]
        self.departments = [""]
        
        
    }
    
}
