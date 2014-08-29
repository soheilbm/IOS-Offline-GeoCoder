//
//  reverseGeoCoder.m
//  Offline reverseGeoCoder
//
//  Created by Soheilbm on 8/29/14.
//  Copyright (c) 2014 Soheilbm. All rights reserved.
//

#import "reverseGeoCoder.h"

@implementation reverseGeoCoder

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSData *jsonFile = [[NSData alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"CountriesGeoCode" ofType:@"json"]];
        _countryGeoData = [NSJSONSerialization JSONObjectWithData:jsonFile options:0 error:nil];
    }
    return self;
}

// returns country detail of the point
- (NSString*) getCountryDetailWithKey:(GeoCodeKey)key withLocation:(CLLocation *) location{
    
    float lat = location.coordinate.latitude;
    float lng = location.coordinate.longitude;

    NSString *keyName = [self stringKey:key];
    NSString *result = @"";
    
    int match = FALSE;
    for (int i=0; i<[_countryGeoData count]; i++){
        if([[[[_countryGeoData objectAtIndex:i] objectForKey:@"geometry"] valueForKey:@"type"] isEqualToString:@"Polygon"]){
            match = [self pointInPolygon: lat: lng: [[[[_countryGeoData objectAtIndex:i] objectForKey:@"geometry"] objectForKey:@"coordinates"] objectAtIndex:0]];
            if(match) {
                result = [NSString stringWithFormat:@"%@", [[_countryGeoData objectAtIndex:i] valueForKey:keyName]];
                return result;
                break;
            }
        } else if([[[[_countryGeoData objectAtIndex:i] objectForKey:@"geometry"] valueForKey:@"type"] isEqualToString:@"MultiPolygon"]){
            for (int j=0; j<[[[[_countryGeoData objectAtIndex:i] objectForKey:@"geometry"] objectForKey:@"coordinates"] count]; j++){
                match = [self pointInPolygon: lat :lng: [[[[[_countryGeoData objectAtIndex:i] objectForKey:@"geometry"] objectForKey:@"coordinates"] objectAtIndex:j] objectAtIndex:0]];
                if(match) {
                    result = [NSString stringWithFormat:@"%@", [[_countryGeoData objectAtIndex:i] valueForKey:keyName]];
                    return result;
                    break;
                }
            }
        }
    }
    return result;
}

// Get string for Key
-(NSString *)stringKey:(GeoCodeKey)key
{
    if (key == KeyISO2A)
    {
        return @"iso_a2";
    }else if (key == KeyISO3A)
    {
        return @"iso_a3";
    }else{
        return @"name";
    }
}

// Check if Lat long is inside the Polygon datas
- (BOOL) pointInPolygon : (float) lat : (float) lng : (NSArray*) polygon {
    BOOL found = FALSE;
    unsigned long i = 0;
    unsigned long j = 0;
    for(i = 0, j = [polygon count] - 1; i < [polygon count]; j = i++){
        if( (([[[polygon objectAtIndex:i] objectAtIndex:1] floatValue] > lat) != ([[[polygon objectAtIndex:j] objectAtIndex:1] floatValue] > lat)) && (lng < ( [[[polygon objectAtIndex:j] objectAtIndex:0] floatValue] - [[[polygon objectAtIndex:i] objectAtIndex:0] floatValue] ) * ( lat - [[[polygon objectAtIndex:j] objectAtIndex:1] floatValue] ) / ([[[polygon objectAtIndex:j] objectAtIndex:1] floatValue] - [[[polygon objectAtIndex:i] objectAtIndex:1] floatValue]) + [[[polygon objectAtIndex:i] objectAtIndex:0] floatValue] ) ){
            found = !found;
        }
    }
    return found;
}

@end
