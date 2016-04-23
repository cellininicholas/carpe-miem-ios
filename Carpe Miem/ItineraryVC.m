//
//  ItineraryVC.m
//  Carpe Miem
//
//  Created by Nick Cellini on 23/04/2016.
//  Copyright © 2016 fishackathon. All rights reserved.
//

#import "ItineraryVC.h"

#import "CM.h"

@interface ItineraryVC ()

@end

@implementation ItineraryVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"My Itinerary";
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.navigationController.navigationBar.barTintColor = [CM appBlue];
    self.navigationController.navigationBar.titleTextAttributes = @{
                                                                    NSForegroundColorAttributeName : [UIColor whiteColor],
                                                                    NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-light" size:17]
                                                                    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
