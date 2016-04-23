//
//  CM.h
//  Carpe Miem
//
//  Created by Nick Cellini on 23/04/2016.
//  Copyright © 2016 fishackathon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class CMSite;

@interface CM : NSObject

+ (UIColor *)appBlue;
+ (NSArray <CMSite *> *)sites;

@end
