# Nominatim

[![CI Status](http://img.shields.io/travis/Josef/Nominatim.svg?style=flat)](https://travis-ci.org/Josef/Nominatim)
[![Version](https://img.shields.io/cocoapods/v/Nominatim.svg?style=flat)](http://cocoapods.org/pods/Nominatim)
[![License](https://img.shields.io/cocoapods/l/Nominatim.svg?style=flat)](http://cocoapods.org/pods/Nominatim)
[![Platform](https://img.shields.io/cocoapods/p/Nominatim.svg?style=flat)](http://cocoapods.org/pods/Nominatim)

A Swift wrapper for reverse geocoding of OpenStreetMap data

I accidentally realised that it's not possible to decode an address to a CLLocation (latitude / longitude) and the other way round. So I built NominatimSwift. It uses OpenStreetMap's free Nominatim API gather location data for a specific latitude or a free text query (i.e. addresses or landmarks).

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


## Contribution
- If you'd like to contribute please submit a pull request via GitHub. 


Like NominatimSwift? Make a donation:
BTC: soon
ETH: soon
LTC: soon

## Meta

Josef Moser – [@josef_moser](https://twitter.com/josef_moser)

Distributed under the MIT license: Copyright (c) 2016 Josef Moser
[https://github.com/caloon](https://github.com/caloon/)


## License

Nominatim is available under the MIT license. See the LICENSE file for more info.
