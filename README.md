# Nominatim

[![CI Status](http://img.shields.io/travis/Josef/Nominatim.svg?style=flat)](https://travis-ci.org/Josef/Nominatim)
[![Version](https://img.shields.io/cocoapods/v/Nominatim.svg?style=flat)](http://cocoapods.org/pods/Nominatim)
[![License](https://img.shields.io/cocoapods/l/Nominatim.svg?style=flat)](http://cocoapods.org/pods/Nominatim)
[![Platform](https://img.shields.io/cocoapods/p/Nominatim.svg?style=flat)](http://cocoapods.org/pods/Nominatim)

NominatimKit is a Swift wrapper for forward and reverse geocoding of OpenStreetMap data. 

**Why?** Geocoding location data on iOS requires the use of CoreLocation and the user's permission to access location data. This permission if often not given. Even worse so, CLGeocoder can be [quite inaccurate](https://medium.com/@enricopiovesan/tutorial-geocoding-with-swift-4-7ef378778377#cb52). If you want a lightweight and more reliable solution to geocode addressess and coordinates, NominatimKit comes to the rescue.

**How?** Nominatim is a search engine for OpenStreetMap data. NominatimKit uses the free Nominatim API to gather location data for specific geo coordinates or any free text query (i.e. addresses or landmarks).

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

Nominatim is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```
pod 'Nominatim'
```

## Usage

Search for Addresses
```
Nominatim.getLocation(fromAddress: "Stephansplatz, 1010 Vienna, Austria", completion: {(error, location) -> Void in
      print("Geolocation of the Royal Palace of Stockholm:")
      print("lat = " + (location?.latitude)! + "   lon = " + (location?.longitude)!)
    })
```
Search for Landmarks
```
Nominatim.getLocation(fromAddress: "The Royal Palace of Stockholm", completion: {(error, location) -> Void in
      print("Geolocation of the Royal Palace of Stockholm:")
      print("lat = " + (location?.latitude)! + "   lon = " + (location?.longitude)!)
    })
```
Search with Latitude and Longitude
```
Nominatim.getLocation(fromLatitude: "55.6867243", longitude: "12.5700724", completion: {(error, location) -> Void in
      print("City for geolocation 55.6867243/12.5700724:")
      print(location?.city)
    })
```

## Author

NominatimKit was created by Josef Moser. I am an independent software developer and co-founder of [Cora Health](https://www.cora.health/) and [Cryptoradar](https://cryptoradar.co).

Find me on: [Github](https://github.com/caloon/) or [Twitter](https://twitter.com/josef_moser)

## Contribution

We welcome contribution to this project by opening issues or pull request.

## License

NominatimKit is available under the MIT license. See the LICENSE file for more info.
If you'd like to acknowledge the author of NominatimKit, please set a link to this GitHub page.
