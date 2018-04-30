
 //
 //  ClubsTableViewController.swift
 //  SpartanMap
 //
 //  Created by Conrad Bormann on 4/29/18.
 //  Copyright © 2018 Conrad Bormann All rights reserved.
 //
 
 import UIKit
 import Foundation

 class ClubsTableViewController: UITableViewController
 {
      var clubs = [String]()
     override func viewDidLoad()
     {
         super.viewDidLoad()
     
         switch myIndex
         {
             case 0:
             clubs = [""]
             case 1:
             clubs = ["Art Club","Graphics Arts Club"]
             case 2:
             clubs = [""]
             case 3:
             clubs = [""]
             case 4:
             clubs = [""]
             case 5:
             clubs = [""]
             case 6:
             clubs = ["none"]
             case 7:
             clubs = ["none"]
             case 8:
             clubs = ["none"]
             case 9:
             clubs = ["none"]
             case 10:
             clubs = ["none"]
             case 11:
             clubs = ["none"]
             case 12:
             clubs = ["none"]
             case 13:
             clubs = ["none"]
             case 14:
             clubs = ["none"]
             case 15:
             clubs = ["none"]
             case 16:
             clubs = ["none"]
             case 17:
             clubs = ["none"]
             case 18:
             clubs = ["none"]
             case 19:
             clubs = ["test"]
             case 20:
             clubs = ["test"]
             case 21:
             clubs = ["American Association of Airport Executives (AAAE)"," American Concrete Institute (ACI)","American Institute of Aeronautics & Astronautics (AIAA)" ,"American Institute of Chemical Engineers (AIChE)"," American Society of Civil Engineers (ASCE)"," American Society of Heating, Refrigerating & Air- Conditioning Engineers (ASHRAE)","American Society of Mechanical Engineers (ASME)"," Associated Ge Association of Facilities Engineers (AFE)"," Biomedical Engineering Society (BMES)","neral Contractors (AGC)","Human Factors and Ergonomics Society","Institute of Electrical & Electronic Engineers (IEEE)"," IEEE – Components, Packaging, & Manufacturing Technology (CMPT)","Institute of Industrial Engineers (IIE)","Institute of Transportation Engineers (ITE)","Int’l Society for Pharmaceutical Engineers (ISPE) Materials Advantage","Society for Computer Engineering (SCE)","Society of Automotive Engineers Int’l (SAE)","Society of Manufacturing Engineers (SME)","Society of Plastic Engineers (SPE)","Water Environment Engineering Organization (WEEO)","Amateur Radio Club","Applied Engineering Club","Concrete Canoe Team","Earthquake Engineering Research Institute The Flying 20","Project Enable"," Robotics Club"," SAE – Baja Vehicle","SAE – Formula Vehicle","SAE – Hybrid/Electric Vehicle","SJSU Precision Flight Team","Spartan AUV – autonomous unmanned vehicle Steel Bridge Team","Wastewater Treatment Team","Black Alliance of Scientists and Engineers (BASE)"," Engineering to Harness & Optimize Sustainability (ETHOS)","Engineers Without Borders","Society of Latino Engineers and Scientists (SOLES)","Society of Women Engineers (SWE)","Vietnamese Engineering Students Association Women in Aviation"]
            
             case 22:
             clubs = ["testyah"]
             case 23:
             clubs = ["teaytasdktj;oaw"]
             case 24:
             clubs = [""]
             case 25:
             clubs = [""]
             case 26:
             clubs = [""]
             case 27:
             clubs = [""]
             case 28:
             clubs = [""]
             case 29:
             clubs = [""]
             case 30:
             clubs = [""]
             case 31:
             clubs = [""]
             case 32:
             clubs = [""]
             case 33:
             clubs = [""]
             case 34:
             clubs = [""]
             case 35:
             clubs = [""]
             case 36:
             clubs = [""]
             case 37:
             clubs = [""]
             case 38:
             clubs = [""]
             case 39:
             clubs = [""]
             case 40:
             clubs = [""]
             default:
             clubs = [""]
       }
    }
     
     
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
         {
         // #warning Incomplete implementation, return the number of rows
         return clubs.count
         }
        
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
         {
         let cell = tableView.dequeueReusableCell(withIdentifier: "ClubCell", for: indexPath)
         // Configure the cell...
         cell.textLabel?.text = clubs[indexPath.row]
         return cell
         }

         /*override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
         {
         myIndex=indexPath.row
         performSegue(withIdentifier: "segue", sender: self)
         }
         */
 
}



 

