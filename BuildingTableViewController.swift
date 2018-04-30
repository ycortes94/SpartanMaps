//
//  BuildingTableViewController.swift
//  SpartanMap
//
//  Created by Conrad Bormann on 4/29/18.
//  Copyright © 2018 Conrad Bormann . All rights reserved.
//

import UIKit

var buildings = ["Administration", "Art Building","AS Print Shop", "Associated Students House", "Boccardo Business Complex", "Bookstore","Business Tower","Campus Village 2","Campus Village A","Campus Village B","Campus Village C","Career Center","Computer Center","Central classroom Building","Clark Hall","Concert Hall","Dining Commons","Dudley Moorhead Hall","Duncan Hall","Dwight Bentel Hall","Engineering Building","Event Center","Faculty Offices","Health Building","Hugh Gillis Hall","Industrial Studies","Instructional Resource Center","Dr. Martin Luther King Jr. Library","MacQuarrie Hall","Morris Dailey Auditorium","Music Building","Science Building","Spartan Complex Centeral","Spartan Memorial","Student Recreation and Aquatic Center","Student Wellness Center","Student Sevices Center","Diaz Compean Student Union","Student Wellness Center","Sweeney Hall","Tower Hall","University Police Department","University Theatre","Washington Square Hall","Yoshihiro Uchida Hall"]
var myIndex = 0
var clubIndex = 0
var depIndex = 0
var teachIndex = 0
var adminIndex = 0
class BuildingTableViewController: UITableViewController {
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return buildings.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = buildings[indexPath.row]
        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        myIndex=indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
}







