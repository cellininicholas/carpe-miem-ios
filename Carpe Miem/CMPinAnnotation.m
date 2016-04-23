//
//  CMPinAnnotation.m
//  Carpe Miem
//
//  Created by Nick Cellini on 23/04/2016.
//  Copyright © 2016 fishackathon. All rights reserved.
//

#import "CMPinAnnotation.h"

#import "CMSite.h"

@implementation CMPinAnnotation

+ (nonnull CMPinAnnotation *)annotationWithSite:(nonnull CMSite *)site {
    CMPinAnnotation *anot = [[CMPinAnnotation alloc] init];
    anot.site = site;
    return anot;
}

- (nonnull NSString *)reuseID {
    switch (_site.status) {
        case CMStatusNormal:
            return @"PinNormal";
        case CMStatusModerate:
            return @"PinModerate";
        case CMStatusHigh:
            return @"PinHigh";
        default:
            return @"PinNormal";
            break;
    }
}

- (UIImage *)iconImage {
    switch (_site.status) {
        case CMStatusNormal:
            return [UIImage imageNamed:@"MapPinGreen.png"];
            break;
        case CMStatusModerate:
            return [UIImage imageNamed:@"MapPinYellow.png"];
            break;
        case CMStatusHigh:
            return [UIImage imageNamed:@"MapPinRed.png"];
            break;
            
        default:
            return [UIImage imageNamed:@"MapPinGreen.png"];
            break;
    }
}

- (CLLocationCoordinate2D)coordinate {
    if (self.site) {
        return self.site.coordinate;
    } else {
        return kCLLocationCoordinate2DInvalid;
    }
}
- (NSString *)title {
    if (self.site) {
        return self.site.name;
    }
    return nil;
}
- (NSString *)subtitle {
    if (self.site) {
        return self.site.desc;
    }
    return nil;
}

- (void)setSite:(CMSite *)site {
    _site = site;    
}

@end
