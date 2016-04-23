//
//  CMSite.m
//  Carpe Miem
//
//  Created by Nick Cellini on 23/04/2016.
//  Copyright © 2016 fishackathon. All rights reserved.
//

#import "CMSite.h"

@implementation CMSite

- (id)initWithName:(NSString *)name
              desc:(NSString *)desc
             coord:(CLLocationCoordinate2D)coord
            status:(CMSiteStatus)status {
    self = [super init];
    if (self) {
        _name = name;
        _desc = desc;
        _coordinate = coord;
        _status = status;
    }
    return self;
}

@end
