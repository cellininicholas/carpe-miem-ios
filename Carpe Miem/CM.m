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
                       [[CMSite alloc] initWithName:@"Name 1"
                                               desc:@"Desc"
                                              coord:CLLocationCoordinate2DMake(43.644432, -88.572083)
                                             status:CMStatusNormal],
                       [[CMSite alloc] initWithName:@"Name 2"
                                               desc:@"Desc"
                                              coord:CLLocationCoordinate2DMake(43.455532, -88.418983)
                                             status:CMStatusModerate],
                       [[CMSite alloc] initWithName:@"Name 3"
                                               desc:@"Desc"
                                              coord:CLLocationCoordinate2DMake(43.233332, -88.286183)
                                             status:CMStatusHigh], nil];
    });

    return staticSites;
}

@end
