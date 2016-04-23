//
//  FirstViewController.m
//  Carpe Miem
//
//  Created by Nick Cellini on 23/04/2016.
//  Copyright © 2016 fishackathon. All rights reserved.
//

#import "MapVC.h"

#import "CM.h"

#import <Mapbox/Mapbox.h>

@interface MapVC ()
@property (nonatomic, strong) MGLMapView *mapview;
@property (nonatomic) CLLocationCoordinate2D centerMapCoord;
@end

@implementation MapVC

- (void)commonInit {
    
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self commonInit];
    }
    return self;
}
- (instancetype)init {
    self = [super init];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Carp Map";
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.navigationController.navigationBar.barTintColor = [CM appBlue];
    self.navigationController.navigationBar.titleTextAttributes = @{
                                                                    NSForegroundColorAttributeName : [UIColor whiteColor],
                                                                    NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-light" size:17]
                                                                    };
    
    
    NSURL *url = [NSURL URLWithString:@"mapbox://styles/cellininicholas/cince192y001mg8kpy5o43303"];
    _mapview = [[MGLMapView alloc] initWithFrame:self.view.bounds styleURL:url];
    [_mapview setDelegate:self];
    
    _centerMapCoord = CLLocationCoordinate2DMake(43.454432, -88.419083);
    [_mapview setCenterCoordinate:_centerMapCoord zoomLevel:5 animated:NO];
    [self.view addSubview:_mapview];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    
}

- (void)zoomToCenter {
    [_mapview setCenterCoordinate:_centerMapCoord zoomLevel:7 animated:YES];
    
    //MGLMapCamera *camera = [MGLMapCamera cameraLookingAtCenterCoordinate:_centerMapCoord fromEyeCoordinate:_centerMapCoord eyeAltitude:800];
    
    //    MGLMapCamera *camera = [MGLMapCamera cameraLookingAtCenterCoordinate:_centerMapCoord fromDistance:88000 pitch:0 heading:0];
    //    CAMediaTimingFunction *timing = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    //    [_mapview setCamera:camera withDuration:1.0f animationTimingFunction:timing];
    
}

- (void)mapViewDidFinishLoadingMap:(MGLMapView *)mapView {
    [self performSelector:@selector(zoomToCenter) withObject:nil afterDelay:0.7];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
