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
        MapView.delegate = self
        // show artwork on map
        let artwork = Artwork(title: "Engineering Building",
                              locationName: "San Jose State University",
                              discipline: "School Building",
                              coordinate: CLLocationCoordinate2D(latitude: 37.33711690178177, longitude: -121.88167767923738))
        MapView.addAnnotation(artwork)
    }
    
    @IBAction func handleLogout(_ sender:Any) {
        try! Auth.auth().signOut()
    }
}

extension HomeViewController: MKMapViewDelegate {
    // 1
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        // 2
        guard let annotation = annotation as? Artwork else { return nil }
        // 3
        let identifier = "marker"
        var view: MKMarkerAnnotationView
        // 4
        if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
            as? MKMarkerAnnotationView {
            dequeuedView.annotation = annotation
            view = dequeuedView
        } else {
            // 5
            view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            view.canShowCallout = true
            view.calloutOffset = CGPoint(x: -5, y: 5)
            view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
        }
        return view
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView,
                 calloutAccessoryControlTapped control: UIControl) {
        let location = view.annotation as! Artwork
        let launchOptions = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
        location.mapItem().openInMaps(launchOptions: launchOptions)
    }
}


