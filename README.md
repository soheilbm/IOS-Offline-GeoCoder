IOS-Offline-GeoCoder
====================

An Offline version of reverse Geo Code to retrieve Countries Name and ISO Codes.

#### Installation

To Use this class simply add this to your Podfile.

```
pod 'IOS-Offline-GeoCoder'
```

If you are not using CocoaPods, download this project and copy the Classes directory to your project.

Import the reverseGeoCoder to your header file.

```
#import "reverseGeoCoder.h"
```

Instantiate the reverseGeoCode using : 

```
  // --- Initializing reverseGeoCode
  reverseGeoCoder *reverseGeoCode = [[reverseGeoCoder alloc]init];

```

```
  // --- Locations
  CLLocation *location = [[CLLocation alloc]initWithLatitude:41.0987947 longitude:-86.9682634];
```
```
    
  NSString *countryName = [reverseGeoCode getCountryDetailWithKey:KeyName withLocation:location];
  NSString *countryISO  = [reverseGeoCode getCountryDetailWithKey:KeyISO2A withLocation:location];

```

There are three type of data you can retrieve from reverseGeo Code.

#####1. KeyName   `// Name of the Country`
#####2. KeyISO2A  `// ISO with 2 Alpha`
#####3. KeyISO3A  `// ISO with 3 Alpha`

You may use any of those key to retrieve detail of the Location.

If you like this repo feel free to send your pull requests.


#### ChangeLog
V 0.0.3
- Updating Malaysia and Singapore Polygone.
- Updating Polygone check point by refering to http://stackoverflow.com/questions/16890294/leaflet-how-to-check-point-lies-inside-outside-of-polygon-or-rectangle 

V 0.0.2
- Updating Podspec file to remove 'warning: no rule to process file json'

V 0.0.1
- First release of the project


#### License 
This project originally created by 
krisrak  => https://github.com/krisrak/ios-offline-reverse-geocode-country

