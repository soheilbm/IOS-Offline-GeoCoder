//
//  Offline_GeoCoderTests.m
//  Offline GeoCoderTests
//
//  Created by Soheilbm on 8/29/14.
//  Copyright (c) 2014 Soheilbm. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "reverseGeoCoder.h"

@interface Offline_GeoCoderTests : XCTestCase
@property (nonatomic,strong) NSArray *randomLocations;
@end

@implementation Offline_GeoCoderTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    NSMutableArray *array = [[NSMutableArray alloc]init];
    
    CLLocation *location1 = [[CLLocation alloc]initWithLatitude:41.0987947 longitude:-86.9682634];     // US
    [array addObject:@{@"ISO":@"US",
                       @"Location":location1}];
    
    CLLocation *location2 = [[CLLocation alloc]initWithLatitude:64.7857152 longitude:-42.3667156];     // GL
    [array addObject:@{@"ISO":@"GL",
                       @"Location":location2}];
    
    CLLocation *location3 = [[CLLocation alloc]initWithLatitude:3.133413 longitude:101.666799];        // MY
    [array addObject:@{@"ISO":@"MY",
                       @"Location":location3}];
    
    CLLocation *location4 = [[CLLocation alloc]initWithLatitude:5.403367 longitude:100.314773];        // MY
    [array addObject:@{@"ISO":@"MY",
                       @"Location":location4}];
    
    CLLocation *location5 = [[CLLocation alloc]initWithLatitude:19.449599 longitude:109.829062];       // CN
    [array addObject:@{@"ISO":@"CN",
                       @"Location":location5}];
    
    CLLocation *location6 = [[CLLocation alloc]initWithLatitude:13.738664 longitude:100.692508];       // TH
    [array addObject:@{@"ISO":@"TH",
                       @"Location":location6}];
    
    CLLocation *location7 = [[CLLocation alloc]initWithLatitude:15.416145 longitude:103.363273];        // TH
    [array addObject:@{@"ISO":@"TH",
                       @"Location":location7}];
    
    CLLocation *location8 = [[CLLocation alloc]initWithLatitude:13.118771 longitude:109.283179];       // VN
    [array addObject:@{@"ISO":@"VN",
                       @"Location":location8}];
    
    CLLocation *location9 = [[CLLocation alloc]initWithLatitude:13.770901 longitude:109.223784];       // VN
    [array addObject:@{@"ISO":@"VN",
                       @"Location":location9}];
    
    CLLocation *location10 = [[CLLocation alloc]initWithLatitude:12.312847 longitude:121.212483];      // PH
    [array addObject:@{@"ISO":@"PH",
                       @"Location":location10}];
    
    CLLocation *location11 = [[CLLocation alloc]initWithLatitude:14.880764 longitude:120.838632];      // PH
    [array addObject:@{@"ISO":@"PH",
                       @"Location":location11}];
    
    CLLocation *location12 = [[CLLocation alloc]initWithLatitude:1.323072 longitude:103.713917];       // SG
    [array addObject:@{@"ISO":@"SG",
                       @"Location":location12}];
    
    CLLocation *location13 = [[CLLocation alloc]initWithLatitude:1.324332 longitude:103.676293];       // SG
    [array addObject:@{@"ISO":@"SG",
                       @"Location":location13}];
    
    self.randomLocations = array;
   
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    
    reverseGeoCoder *geoCode = [[reverseGeoCoder alloc] init];
    
    
    for (int i=0; i< [self.randomLocations count]; i++) {
        NSDictionary *object = self.randomLocations[i];
        
        NSString *countryCode = [geoCode getCountryDetailWithKey:KeyISO2A withLocation:[object objectForKey:@"Location"]];

        XCTAssertTrue([[object objectForKey:@"ISO"] isEqualToString:countryCode], @"%@ is equal to %@",[object objectForKey:@"ISO"],countryCode);
    }
}

@end
