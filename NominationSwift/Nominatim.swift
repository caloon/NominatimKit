//
//  Nominatim.swift
//  NominationSwift
//
//  Created by Josef Moser on 30/11/2016.
//  Copyright © 2016 Josef. All rights reserved.
//

import Foundation

class Nominatim {
  class func getLocation(fromString: String) -> Location {
    
  }
}

class Location {
  
  var latitude: String
  var longitude: String
  var countryCode: String
  var country: String
  var state: String?
  var county: String?
  var postcode: String
  var city: String
  var road: String?
  var houseNumber: Int?
  
}
