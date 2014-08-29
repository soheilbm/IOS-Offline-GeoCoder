//
//  AppDelegate.m
//  Offline GeoCoder
//
//  Created by Soheilbm on 8/29/14.
//  Copyright (c) 2014 Soheilbm. All rights reserved.
//

#import "AppDelegate.h"
#import "reverseGeoCoder.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    reverseGeoCoder *reverseGeoCode = [[reverseGeoCoder alloc]init];
    
    CLLocation *location1 = [[CLLocation alloc]initWithLatitude:41.0987947 longitude:-86.9682634];
    CLLocation *location2 = [[CLLocation alloc]initWithLatitude:64.7857152 longitude:-42.3667156];

    
    NSLog(@" Location 1 Name %@",[reverseGeoCode getCountryDetailWithKey:KeyName withLocation:location1]);
    NSLog(@" Location 1 ISO 2 alpha %@",[reverseGeoCode getCountryDetailWithKey:KeyISO2A withLocation:location1]);
    
    NSLog(@" Location 2 Name %@",[reverseGeoCode getCountryDetailWithKey:KeyName withLocation:location2]);
    NSLog(@" Location 2 ISO 2 alpha %@",[reverseGeoCode getCountryDetailWithKey:KeyISO2A withLocation:location2]);
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
