IOS-Offline-GeoCoder
====================

An Offline version of reverse Geo Code to retrieve Countries Name and ISO Codes.

#### Installation

To Use this class simply add this to your Podfile.

```objective-c
pod 'IOS-Offline-GeoCoder'
```

If you are not using Cocoapods, download this project and copy the Classes directory to your project.

Import the reverseGeoCoder to your header file.

```objective-c
#import "reverseGeoCoder.h"
```

Instantiate the reverseGeoCode using : 

```objective-c
// --- Initializing reverseGeoCode
reverseGeoCoder *reverseGeoCode = [[reverseGeoCoder alloc]init];

```

```objective-c
// --- Locations
CLLocation *location = [[CLLocation alloc]initWithLatitude:41.0987947 longitude:-86.9682634];
```
```objective-c
    
NSString *countryName = [reverseGeoCode getCountryDetailWithKey:KeyName withLocation:location];

NSString *countryISO  = [reverseGeoCode getCountryDetailWithKey:KeyISO2A withLocation:location];

```

There are three type of data you can retrieve from reverseGeo Code.

##### 1. KeyName   

`// Name of the Country`

##### 2. KeyISO2A  

`// ISO with Alpha-2`

##### 3. KeyISO3A  

`// ISO with Alpha-3`


You may use any of those key to retrieve detail of the Location.

If you like this repo feel free to send your pull requests.



#### License 

This project originally created by 
krisrak  => https://github.com/krisrak/ios-offline-reverse-geocode-country

