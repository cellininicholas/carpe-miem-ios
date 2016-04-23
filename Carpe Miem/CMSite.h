//
//  CMSite.h
//  Carpe Miem
//
//  Created by Nick Cellini on 23/04/2016.
//  Copyright © 2016 fishackathon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CLLocation.h>

typedef enum CMSiteStatus {
    CMStatusNormal,
    CMStatusModerate,
    CMStatusHigh
}CMSiteStatus;

@interface CMSite : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *desc;

@property (nonatomic, readwrite) CLLocationCoordinate2D coordinate;
@property (nonatomic, readwrite) CMSiteStatus status;

- (id)initWithName:(NSString *)name
              desc:(NSString *)desc
             coord:(CLLocationCoordinate2D)coord
            status:(CMSiteStatus)status;

@end
