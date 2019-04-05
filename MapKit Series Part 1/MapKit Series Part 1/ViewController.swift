//
//  ViewController.swift
//  MapKit Series Part 1
//
//  Created by James Rea Taylor on 20/02/2019.
//  Copyright © 2019 James Rea Taylor. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    let mapView = MKMapView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupMap()
        setupLayout()
        
    }
    
    func setupMap() {
        
        let latitude: CLLocationDegrees = 51.481663
        let longitude: CLLocationDegrees = -0.1931452
        
        let latDelta: CLLocationDegrees = 0.02
        let lonDelta: CLLocationDegrees = 0.02
        
        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        
        let coordinates = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        let region = MKCoordinateRegion(center: coordinates, span: span)
        
        let annotation: MKPointAnnotation = MKPointAnnotation()
        annotation.coordinate = coordinates
        annotation.title = "You are here"
        annotation.subtitle = "Your coordinates are \n\(latitude)° N \n\(longitude)° W"
        
        mapView.setRegion(region, animated: true)
        mapView.addAnnotation(annotation)
        
    }
    
    func setupLayout() {
        
        view.addSubview(mapView)
        
        mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mapView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        
    }
}
