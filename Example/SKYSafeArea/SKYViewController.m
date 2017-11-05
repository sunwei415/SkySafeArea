//
//  SKYViewController.m
//  SKYSafeArea
//
//  Created by csc-sunwei on 11/05/2017.
//  Copyright (c) 2017 csc-sunwei. All rights reserved.
//

#import "SKYViewController.h"

#import "UIViewController+safeArea.h"

@interface SKYViewController ()

@end

@implementation SKYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    CGRect safeBounds = self.sky_safeBounds;
    NSLog(@"a breakpoint");
}

@end
