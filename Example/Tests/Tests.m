//
//  SKYSafeAreaTests.m
//  SKYSafeAreaTests
//
//  Created by csc-sunwei on 11/05/2017.
//  Copyright (c) 2017 csc-sunwei. All rights reserved.
//

@import XCTest;

#import "UIViewController+safeArea.h"

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)test_UIViewController_safeArea
{
    UIViewController *viewController = [UIViewController new];

    viewController.sky_safeBounds = CGRectMake(0,0,20,20);
    
    XCTAssert([viewController respondsToSelector:@selector(sky_safeBounds)]);

    XCTAssert(viewController.sky_safeBounds.origin.x == 0);
}

@end

