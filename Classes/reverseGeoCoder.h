//
//  reverseGeoCoder.h
//  Offline reverseGeoCoder
//
//  Created by Soheilbm on 8/29/14.
//  Copyright (c) 2014 Soheilbm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

typedef enum GeoCodeKey : NSInteger {
    KeyName = 0,
    KeyISO2A,
    KeyISO3A
} GeoCodeKey;

@interface reverseGeoCoder : NSObject

@property (nonatomic, strong) NSArray *countryGeoData;
- (NSString*) getCountryDetailWithKey:(GeoCodeKey)key withLocation:(CLLocation *) location;
@end
