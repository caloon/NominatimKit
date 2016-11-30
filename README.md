# NominatimSwift
A Swift wrapper for reverse geocoding of OpenStreetMap data

I accidentally realised that it's not possible to decode an address to a CLLocation (latitude / longitude) and the other way round. So I built NominatimSwift. It uses OpenStreetMap's free Nominatim API gather location data for a specific latitude or a free text query (i.e. addresses or landmarks).

## Usage

### Install
Copy Nominatim.swift into your project

### Methods
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
      print("---")
      print("City for geolocation 55.6867243/12.5700724:")
      print(location?.city)
    })
```


## Contribution
- If you'd like to contribute please submit a pull request via GitHub. 

Like NominatimSwift? Get us a beer ;-) 

[![Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=NVFEEVXQSSM9S)

## Meta

Josef Moser – [@josef_moser](https://twitter.com/josef_moser)

Distributed under the MIT license: Copyright (c) 2016 Josef Moser

[https://github.com/caloon](https://github.com/caloon/)

Feel free to use this source in any of your projects. If you'd like to acknowledge the author, feel free to link to www.caloon.co or this GitHub page.
