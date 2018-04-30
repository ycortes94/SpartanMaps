//
//  HomeViewController.swift
//  FirebaseApp
//
//  Created by Yosimy Cortes and Conrad Bormann on 2018-03-13.
//  Copyright © 2018 Yosimy Cortes. All rights reserved.
//

import MapKit
import UIKit
import Firebase

class HomeViewController:UIViewController, UITableViewDelegate {
    var tableView:UITableView!
    
    @IBOutlet weak var MapView: MKMapView!
    
    @IBOutlet weak var Buildings: UIBarButtonItem!
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
        let artworkSU = Artwork(title: "Student Union",
                              locationName: "San Jose State University",
                              discipline: "SJSU Student Union",
                              coordinate: CLLocationCoordinate2D(latitude: 37.336411, longitude: -121.881334))
        let artworkIS = Artwork(title: "Industrial Studies Building",
                              locationName: "San Jose State University",
                              discipline: "School Building",
                              coordinate: CLLocationCoordinate2D(latitude: 37.337726, longitude: -121.880727))
        
        let artwork4 = Artwork(title: "Career Center",
                              locationName: "San Jose State University",
                              discipline: "Administration",
                              coordinate: CLLocationCoordinate2D(latitude: 37.336907, longitude: -121.883169))
        let artwork5 = Artwork(title: "Administration",
                               locationName: "San Jose State University",
                               discipline: "Administration",
                               coordinate: CLLocationCoordinate2D(latitude: 37.336614, longitude: -121.882802))
        let artwork6 = Artwork(title: "Science 'Building",
                               locationName: "San Jose State University",
                               discipline: "SCI",
                               coordinate: CLLocationCoordinate2D(latitude: 37.33457806943538, longitude: -121.88463729101198))
        let artwork7 = Artwork(title: "Dudley Moorhead Hall",
                               locationName: "San Jose State University",
                               discipline: "DMH",
                               coordinate: CLLocationCoordinate2D(latitude: 37.33616270909689, longitude: -121.88359826803207))
        let artwork8 = Artwork(title: "Instructional Resource Center",
                               locationName: "San Jose State University",
                               discipline: "IRC",
                               coordinate: CLLocationCoordinate2D(latitude: 37.33653219166645, longitude: -121.88386862880822))
        let artwork9 = Artwork(title: "Washington Square Hall",
                               locationName: "San Jose State University",
                               discipline: "WSQ",
                               coordinate: CLLocationCoordinate2D(latitude: 37.334200729123495, longitude: -121.88403008621196))
        let artwork10 = Artwork(title: "Hugh Gillis Hall",
                               locationName: "San Jose State University",
                               discipline: "HGH",
                               coordinate: CLLocationCoordinate2D(latitude: 37.336046273236526, longitude: -121.88452968815898))
        let artwork11 = Artwork(title: "Martin Luther King Junior Library",
                               locationName: "San Jose State University",
                               discipline: "KING",
                               coordinate: CLLocationCoordinate2D(latitude: 37.335453603217054, longitude: -121.88501686418499))
        MapView.addAnnotation(artwork11)
        let artwork12 = Artwork(title: "Dwight Bentel Hall",
                                locationName: "San Jose State University",
                                discipline: "DBH",
                                coordinate: CLLocationCoordinate2D(latitude: 37.33509114565304, longitude: -121.88229825342114))
        MapView.addAnnotation(artwork12)
        let artwork13 = Artwork(title: "Tower Hall",
                                locationName: "San Jose State University",
                                discipline: "KING",
                                coordinate: CLLocationCoordinate2D(latitude: 37.335312032480644, longitude: -121.883479555407))
        MapView.addAnnotation(artwork13)
        let artwork14 = Artwork(title: "Martin Luther King Junior Library",
                                locationName: "San Jose State University",
                                discipline: "KING",
                                coordinate: CLLocationCoordinate2D(latitude: 37.335453603217054, longitude: -121.88501686418499))
        MapView.addAnnotation(artwork14)
        let artwork15 = Artwork(title: "Faculty Offices",
                                locationName: "San Jose State University",
                                discipline: "FOB",
                                coordinate: CLLocationCoordinate2D(latitude: 37.33460490437933, longitude: -121.88262011850293))
        MapView.addAnnotation(artwork15)
        let artwork16 = Artwork(title: "Yoshihiro Uchida Hall",
                                locationName: "San Jose State University",
                                discipline: "YUH",
                                coordinate: CLLocationCoordinate2D(latitude: 37.333652444275174, longitude: -121.88374838107154))
        MapView.addAnnotation(artwork16)
        let artwork17 = Artwork(title: "Spartan Complex Central",
                                locationName: "San Jose State University",
                                discipline: "SPXC",
                                coordinate: CLLocationCoordinate2D(latitude: 37.33415694118161, longitude: -121.8825020681395))
        MapView.addAnnotation(artwork17)
        let artwork18 = Artwork(title: "Spartan Complex Building East",
                                locationName: "San Jose State University",
                                discipline: "SPXE",
                                coordinate: CLLocationCoordinate2D(latitude: 37.334481104313596, longitude: -121.88178323612351))
        MapView.addAnnotation(artwork18)
        let artwork19 = Artwork(title: "Student Wellness Center",
                                locationName: "San Jose State University",
                                discipline: "SWC",
                                coordinate: CLLocationCoordinate2D(latitude: 37.33469546607719, longitude: -121.88132107257843))
        MapView.addAnnotation(artwork19)
        let artwork20 = Artwork(title: "Sweeney Hall",
                                locationName: "San Jose State University",
                                discipline: "SH",
                                coordinate: CLLocationCoordinate2D(latitude: 37.333974629792735, longitude: -121.88098311424255))
        MapView.addAnnotation(artwork20)
        let artwork21 = Artwork(title: "MacQuarrie Hall",
                                locationName: "San Jose State University",
                                discipline: "MH",
                                coordinate: CLLocationCoordinate2D(latitude: 37.333522504096216, longitude: -121.88184142112732))
        MapView.addAnnotation(artwork21)
        let artwork22 = Artwork(title: "South Parking Garage",
                                locationName: "San Jose State University",
                                discipline: "SPG",
                                coordinate: CLLocationCoordinate2D(latitude: 37.33303145879936, longitude: -121.88090069647677))
        MapView.addAnnotation(artwork22)
        let artwork23 = Artwork(title: "University Police Department",
                                locationName: "San Jose State University",
                                discipline: "UPD",
                                coordinate: CLLocationCoordinate2D(latitude: 37.33313435628023, longitude: -121.87989413738251))
        MapView.addAnnotation(artwork23)
        let artwork24 = Artwork(title: "Duncan Hall",
                                locationName: "San Jose State University",
                                discipline: "DH",
                                coordinate: CLLocationCoordinate2D(latitude: 37.332576241667, longitude: -121.88206054334393))
        MapView.addAnnotation(artwork24)
        let artwork25 = Artwork(title: "West Parking Garage",
                                locationName: "San Jose State University",
                                discipline: "WPG",
                                coordinate: CLLocationCoordinate2D(latitude: 37.33233737870111, longitude: -121.8830475962614))
        MapView.addAnnotation(artwork25)
        let artwork26 = Artwork(title: "Associated Student House",
                                locationName: "San Jose State University",
                                discipline: "ASH",
                                coordinate: CLLocationCoordinate2D(latitude: 37.33327372837273, longitude: -121.88268406965017))
        MapView.addAnnotation(artwork26)
        let artwork27 = Artwork(title: "Event Center",
                                locationName: "San Jose State University",
                                discipline: "EC",
                                coordinate: CLLocationCoordinate2D(latitude: 37.335228624559214, longitude: -121.88008189201355))
        MapView.addAnnotation(artwork27)
        let artwork28 = Artwork(title: "Music Building",
                                locationName: "San Jose State University",
                                discipline: "MUS",
                                coordinate: CLLocationCoordinate2D(latitude: 37.335471743570785, longitude: -121.88090801239014))
        MapView.addAnnotation(artwork28)
        let artwork29 = Artwork(title: "Concert Hall",
                                locationName: "San Jose State University",
                                discipline: "CH",
                                coordinate: CLLocationCoordinate2D(latitude: 37.33547600880957, longitude: -121.88059687614441))
        MapView.addAnnotation(artwork29)
        let artwork30 = Artwork(title: "Department of Art and Art History",
                                locationName: "San Jose State University",
                                discipline: "ART",
                                coordinate: CLLocationCoordinate2D(latitude: 37.335975040076576, longitude: -121.87972784042358))
        MapView.addAnnotation(artwork30)
        let artwork31 = Artwork(title: "Health Building",
                                locationName: "San Jose State University",
                                discipline: "HB",
                                coordinate: CLLocationCoordinate2D(latitude: 37.33571337103558, longitude: -121.87913449932591))
        MapView.addAnnotation(artwork31)
        let artwork32 = Artwork(title: "Department of Art and Art History",
                                locationName: "San Jose State University",
                                discipline: "ART",
                                coordinate: CLLocationCoordinate2D(latitude: 37.335975040076576, longitude: -121.87972784042358))
        MapView.addAnnotation(artwork32)
        let artwork33 = Artwork(title: "Campus Village 2",
                                locationName: "San Jose State University",
                                discipline: "CV2",
                                coordinate: CLLocationCoordinate2D(latitude: 37.33493283076964, longitude: -121.87868388821141))
        MapView.addAnnotation(artwork33)
        let artwork34 = Artwork(title: "Campus Village C",
                                locationName: "San Jose State University",
                                discipline: "CVC",
                                coordinate: CLLocationCoordinate2D(latitude: 37.335414686748706, longitude: -121.87810159751018))
        MapView.addAnnotation(artwork34)
        let artwork35 = Artwork(title: "Joe West Hall",
                                locationName: "San Jose State University",
                                discipline: "JWH",
                                coordinate: CLLocationCoordinate2D(latitude: 37.334290263099895, longitude: -121.87807023525238))
        MapView.addAnnotation(artwork35)
        let artwork36 = Artwork(title: "Cooling Plant",
                                locationName: "San Jose State University",
                                discipline: "CP",
                                coordinate: CLLocationCoordinate2D(latitude: 37.336132511749284, longitude: -121.87838197615389))
        MapView.addAnnotation(artwork36)
        let artwork37 = Artwork(title: "Campus Village A",
                                locationName: "San Jose State University",
                                discipline: "CVA",
                                coordinate: CLLocationCoordinate2D(latitude: 37.33445156159808, longitude: -121.87750704957409))
        MapView.addAnnotation(artwork37)
        let artwork38 = Artwork(title: "Campus Village B",
                                locationName: "San Jose State University",
                                discipline: "CVB",
                                coordinate: CLLocationCoordinate2D(latitude: 37.334806349612315, longitude: -121.87695290575874))
        MapView.addAnnotation(artwork38)
        let artwork39 = Artwork(title: "Boccardo Business Complex",
                                locationName: "San Jose State University",
                                discipline: "BBC",
                                coordinate: CLLocationCoordinate2D(latitude: 37.33666479009915, longitude: -121.87861512148112))
        MapView.addAnnotation(artwork39)
        let artwork40 = Artwork(title: "Business Tower",
                                locationName: "San Jose State University",
                                discipline: "BT",
                                coordinate: CLLocationCoordinate2D(latitude: 37.337010428241896, longitude: -121.87887162873119))
        MapView.addAnnotation(artwork40)
        let artwork41 = Artwork(title: "Corporation Yard A",
                                locationName: "San Jose State University",
                                discipline: "CYA",
                                coordinate: CLLocationCoordinate2D(latitude: 37.33813907970955, longitude: -121.8802610130009))
        MapView.addAnnotation(artwork41)
        let artwork42 = Artwork(title: "Corporation Yard B",
                                locationName: "San Jose State University",
                                discipline: "CYB",
                                coordinate: CLLocationCoordinate2D(latitude: 37.33810922409145, longitude: -121.8796119184193))
        MapView.addAnnotation(artwork42)
        let artwork43 = Artwork(title: "Washburn Hall",
                                locationName: "San Jose State University",
                                discipline: "WSH",
                                coordinate: CLLocationCoordinate2D(latitude: 37.333606883755664, longitude: -121.87931854157193))
        MapView.addAnnotation(artwork43)
        let artwork44 = Artwork(title: "Spartan Recreation and Aquatic Center",
                                locationName: "San Jose State University",
                                discipline: "SRAC",
                                coordinate: CLLocationCoordinate2D(latitude: 37.33429786643598, longitude: -121.87974769501432))
        MapView.addAnnotation(artwork44)
        let artwork45 = Artwork(title: "Bookstore",
                                locationName: "San Jose State University",
                                discipline: "BK",
                                coordinate: CLLocationCoordinate2D(latitude: 37.336745351618355, longitude: -121.87972704560644))
        MapView.addAnnotation(artwork45)
        let artwork46 = Artwork(title: "AS Print Shop",
                                locationName: "San Jose State University",
                                discipline: "ASP",
                                coordinate: CLLocationCoordinate2D(latitude: 37.3368707289067, longitude: -121.88055396080017))
        MapView.addAnnotation(artwork46)
        let artwork47 = Artwork(title: "ATM Machines",
                                locationName: "San Jose State University",
                                discipline: "ATM",
                                coordinate: CLLocationCoordinate2D(latitude: 37.33730150877835, longitude: -121.87970638275146))
        MapView.addAnnotation(artwork47)
        let artwork48 = Artwork(title: "Dining Commons",
                                locationName: "San Jose State University",
                                discipline: "DC",
                                coordinate: CLLocationCoordinate2D(latitude: 37.33406913277941, longitude: -121.87854465596047))
        MapView.addAnnotation(artwork48)
        let artwork49 = Artwork(title: "Central Classroom Building",
                                locationName: "San Jose State University",
                                discipline: "CCB",
                                coordinate: CLLocationCoordinate2D(latitude: 37.335567222213264, longitude: -121.8818314808426))
        MapView.addAnnotation(artwork49)
        let artwork50 = Artwork(title: "Clark Hall",
                                locationName: "San Jose State University",
                                discipline: "CL",
                                coordinate: CLLocationCoordinate2D(latitude: 37.336160087329105, longitude: -121.88250203309633))
        MapView.addAnnotation(artwork50)
        let artwork51 = Artwork(title: "Computer Center",
                                locationName: "San Jose State University",
                                discipline: "CC",
                                coordinate: CLLocationCoordinate2D(latitude: 37.335934031398054, longitude: -121.88331742463686))
        MapView.addAnnotation(artwork51)
        let artwork52 = Artwork(title: "SJSU Spartan Memorial Chapel",
                                locationName: "San Jose State University",
                                discipline: "SPM",
                                coordinate: CLLocationCoordinate2D(latitude: 37.334200358668795, longitude: -121.88332586509716))
        MapView.addAnnotation(artwork52)
        let artwork53 = Artwork(title: "Clark Hall",
                                locationName: "San Jose State University",
                                discipline: "CL",
                                coordinate: CLLocationCoordinate2D(latitude: 37.336160087329105, longitude: -121.88250203309633))
        MapView.addAnnotation(artwork53)
        
        
        
        
        
        MapView.addAnnotation(artwork)
        MapView.addAnnotation(artworkSU)
        MapView.addAnnotation(artworkIS)
        MapView.addAnnotation(artwork4)
        MapView.addAnnotation(artwork5)
        MapView.addAnnotation(artwork6)
        MapView.addAnnotation(artwork7)
        MapView.addAnnotation(artwork8)
        MapView.addAnnotation(artwork9)
        MapView.addAnnotation(artwork10)
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


