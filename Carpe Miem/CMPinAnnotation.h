//
//  CMPinAnnotation.h
//  Carpe Miem
//
//  Created by Nick Cellini on 23/04/2016.
//  Copyright © 2016 fishackathon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mapbox/MGLAnnotation.h>
#import <UIKit/UIKit.h>

@class CMSite;

@interface CMPinAnnotation : NSObject <MGLAnnotation>

// MGLANNOTATION
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, readonly, copy, nullable) NSString *title;
@property (nonatomic, readonly, copy, nullable) NSString *subtitle;

@property (nonatomic, strong, nullable) CMSite *site;

- (nonnull UIImage *)iconImage;
- (nonnull NSString *)reuseID;

+ (nonnull CMPinAnnotation *)annotationWithSite:(nonnull CMSite *)site;

@end
