//
//  MapViewController.swift
//  HonoluluArt
//
//  Created by Jeff Norton on 11/7/16.
//  Copyright © 2016 JeffCryst. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    //==================================================
    // MARK: - _Properties
    //==================================================
    
    let regionRadius: CLLocationDistance = 1000
    @IBOutlet weak var mapView: MKMapView!
    
    //==================================================
    // MARK: - General
    //==================================================

    override func viewDidLoad() {
        super.viewDidLoad()

        let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)   // Honolulu
        centerMapOnLocation(location: initialLocation)
    }
    
    //==================================================
    // MARK: - Methods
    //==================================================
    
    func centerMapOnLocation(location: CLLocation) {
        
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
