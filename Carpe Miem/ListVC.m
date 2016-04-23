//
//  SecondViewController.m
//  Carpe Miem
//
//  Created by Nick Cellini on 23/04/2016.
//  Copyright © 2016 fishackathon. All rights reserved.
//

#import "ListVC.h"

#import "CM.h"

@interface ListVC ()

@end

@implementation ListVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Carp List";
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.navigationController.navigationBar.barTintColor = [CM appBlue];
    self.navigationController.navigationBar.titleTextAttributes = @{
                                                                    NSForegroundColorAttributeName : [UIColor whiteColor],
                                                                    NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-light" size:17]
                                                                    };
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
