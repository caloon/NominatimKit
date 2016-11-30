//
//  Nominatim.swift
//  NominationSwift
//
//  Created by Josef Moser on 30/11/2016.
//  Copyright © 2016 Josef. All rights reserved.
//

import Foundation

class Nominatim {
  class func getLocation(fromAddress address: String, completion: @escaping (_ error: Error?, _ result: Location?) -> Void)  {
    
    let queryURL =  URL(string:"https://nominatim.openstreetmap.org/search/" + address.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)! + "?format=json&addressdetails=1&limit=1")!
    let session = URLSession.shared
    
    let jsonQuery = session.dataTask(with: queryURL, completionHandler: { data, response, error -> Void in
      
      if (error != nil) {
        completion(error, nil)
      }
      
      do {
        let jsonResult = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers)
        
        if let array = jsonResult as? Array<Dictionary<String, Any>> {
          
          var houseNumber,road, postcode, cityDistrict, city, country, countryCode, county, state: String?
          if let address = array[0]["address"] as? Dictionary<String, String> {
            houseNumber = address["house_number"]
            road = address["road"]
            postcode = address["postcode"]
            cityDistrict = address["city_district"]
            city = address["city"]
            country = address["country"]
            countryCode = address["country_code"]
            county = address["county"]
            if county == nil {
              county = address["state_district"]
            }
            state = address["state"]
          }
          
          completion(nil, Location(lat: array[0]["lat"] as! String, lon: array[0]["lon"] as! String, countryCode: countryCode, country: country, state: state, county: county, postcode: postcode, city: city, cityDistrict: cityDistrict, road: road, houseNumber: houseNumber))
        }
        
      } catch {
        print(error)
        completion(error, nil)
      }
    }).resume()
  }
  
  class func getLocation(fromLatitude latitude: String, longitude: String, completion: @escaping (_ error: Error?, _ result: Location?) -> Void)  {
    
    let queryURL =  URL(string:"https://nominatim.openstreetmap.org/reverse?format=json&lat=" + latitude + "&lon=" + longitude + "&addressdetails=1&limit=1")!
    let session = URLSession.shared
    
    let jsonQuery = session.dataTask(with: queryURL, completionHandler: { data, response, error -> Void in
      
      if (error != nil) {
        completion(error, nil)
      }
      
      do {
        let jsonResult = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers)
        
        if let dict = jsonResult as? Dictionary<String, Any> {
          
          var houseNumber,road, postcode, cityDistrict, city, country, countryCode, county, state: String?
          if let address = dict["address"] as? Dictionary<String, String> {
            houseNumber = address["house_number"]
            road = address["road"]
            postcode = address["postcode"]
            cityDistrict = address["city_district"]
            city = address["city"]
            country = address["country"]
            countryCode = address["country_code"]
            county = address["county"]
            if county == nil {
              county = address["state_district"]
            }
            state = address["state"]
          }
          
          completion(nil, Location(lat: dict["lat"] as! String, lon: dict["lon"] as! String, countryCode: countryCode, country: country, state: state, county: county, postcode: postcode, city: city, cityDistrict: cityDistrict, road: road, houseNumber: houseNumber))
        }
        
      } catch {
        print(error)
        completion(error, nil)
      }
    }).resume()
  }
}

class Location {
  
  var latitude: String
  var longitude: String
  var countryCode: String?
  var country: String?
  var state: String?
  var county: String?
  var postcode: String?
  var city: String?
  var cityDistrict: String?
  var road: String?
  var houseNumber: String?
  
  required init(lat: String, lon: String, countryCode: String?,  country: String?, state: String?, county: String?, postcode: String?, city: String?, cityDistrict: String?, road: String?, houseNumber: String?) {
    self.latitude = lat
    self.longitude = lon
    self.countryCode = countryCode
    self.country = country
    self.state = state
    self.county = county
    self.postcode = postcode
    self.city = city
    self.cityDistrict = cityDistrict
    self.road = road
    self.houseNumber = houseNumber
  }
  
}
