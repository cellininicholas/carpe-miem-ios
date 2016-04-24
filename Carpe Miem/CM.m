//
//  CM.m
//  Carpe Miem
//
//  Created by Nick Cellini on 23/04/2016.
//  Copyright © 2016 fishackathon. All rights reserved.
//

#import "CM.h"

#import "CMSite.h"

@implementation CM

+ (UIColor *)appBlue {
    return [UIColor colorWithRed:0.1334 green:0.6784 blue:0.7607 alpha:1.0];
}

+ (NSArray <CMSite *> *)sites {
    static NSArray <CMSite *> *staticSites;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        staticSites = [NSArray arrayWithObjects:
          [[CMSite alloc] initWithName:@"11111111"
          desc:@"USGS"
          coord:CLLocationCoordinate2DMake(31.00018054, -85.9999378)
          status:CMStatusHigh],
          [[CMSite alloc] initWithName:@"2339210"
          desc:@"USGS"
          coord:CLLocationCoordinate2DMake(33.22511878, -85.3199473)
          status:CMStatusHigh],
          [[CMSite alloc] initWithName:@"2339215"
          desc:@"USGS"
          coord:CLLocationCoordinate2DMake(33.14734284, -85.2818902)
          status:CMStatusNormal],
          [[CMSite alloc] initWithName:@"2339225"
          desc:@"USGS"
          coord:CLLocationCoordinate2DMake(33.1223435, -85.2491113)
          status:CMStatusHigh],
          [[CMSite alloc] initWithName:@"2339360"
          desc:@"USGS"
          coord:CLLocationCoordinate2DMake(32.99734628, -85.2268879)
          status:CMStatusNormal],
          [[CMSite alloc] initWithName:@"2339430"
          desc:@"USGS"
          coord:CLLocationCoordinate2DMake(32.88179348, -85.39105889)
          status:CMStatusNormal],
          [[CMSite alloc] initWithName:@"2339455"
          desc:@"USGS"
          coord:CLLocationCoordinate2DMake(32.9109594, -85.36605829)
          status:CMStatusModerate],
          [[CMSite alloc] initWithName:@"2339480"
          desc:@"USGS"
          coord:CLLocationCoordinate2DMake(32.92305556, -85.2994444)
          status:CMStatusNormal],
          [[CMSite alloc] initWithName:@"2339493"
          desc:@"USGS"
          coord:CLLocationCoordinate2DMake(32.7662422, -85.1671623)
          status:CMStatusHigh],
          [[CMSite alloc] initWithName:@"2339495"
          desc:@"USGS"
          coord:CLLocationCoordinate2DMake(32.9015159, -85.1963308)
          status:CMStatusNormal], nil];
    });

    return staticSites;
}

@end
