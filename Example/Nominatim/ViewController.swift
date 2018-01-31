//
//  ViewController.swift
//  Nominatim
//
//  Created by caloon on 12/21/2017.
//  Copyright (c) 2017 caloon. All rights reserved.
//

import UIKit
import Nominatim

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Search for Addresses
        Nominatim.getLocation(fromAddress: "Stephansplatz, 1010 Vienna, Austria", completion: {(location) -> Void in
            
            if location != nil {
                print("Geolocation of Stephansplatz, 1010 Vienna, Austria: " + "lat=" + location!.latitude + "   long=" + location!.longitude)
            }
        })
        
        // Search for Landmarks
        Nominatim.getLocation(fromAddress: "Schloss Neuschwanstein", completion: {(location) -> Void in
            
            if location != nil {
                print("Geolocation of Schloss Neuschwanstein: " + "lat=" + location!.latitude + " long=" + location!.longitude)
            }
            
        })
        
        // Search with Latitude and Longitude
        Nominatim.getLocation(fromLatitude: "55.6867243", longitude: "12.5700724", completion: {(error, location) -> Void in
            
            if location != nil {
                print("City for geolocation 55.6867243/12.5700724: " + location!.city!)
            }
        })
        
    }
}

