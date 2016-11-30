//
//  ViewController.swift
//  NominationSwift
//
//  Created by Josef Moser on 30/11/2016.
//  Copyright © 2016 Josef. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    // get location details through free text search
    Nominatim.getLocation(fromAddress: "The Royal Palace of Stockholm", completion: {(error, location) -> Void in
      print("Geolocation of the Royal Palace of Stockholm:")
      print("lat = " + (location?.latitude)! + "   lon = " + (location?.longitude)!)
    })
    
    // get location details through latitude & longitude search
    Nominatim.getLocation(fromLatitude: "55.6867243", longitude: "12.5700724", completion: {(error, location) -> Void in
      print("---")
      print("City for geolocation 55.6867243/12.5700724:")
      print(location?.city)
    })
  }
}

