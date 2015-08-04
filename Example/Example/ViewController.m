//
//  ViewController.m
//  Example
//
//  Created by AlanYen on 2015/7/30.
//  Copyright (c) 2015年 17Life. All rights reserved.
//

#import "ViewController.h"
#import <SimpleObjcFramework/TestClass.h>
#import <SimpleObjcFramework/TestViewController.h>
#import "ThirdpartyClass.h"
#import "AFNetworking.h"
#import "SDWebImageManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self demoUIAndImage];
    [self demoUseModule];
    [self demoAFNetworking];
    [self demoSDWebImage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - [Test method in Framework]

- (void)demoUIAndImage {
    
    TestClass *test = [[TestClass alloc] init];
    [test printLog];
    
    //TestViewController *vc = (TestViewController*)[test loadTestControllerFromFramework];
    TestViewController *vc = (TestViewController*)[test loadTestControllerAndXibFromFramework];
    UIImage *logoImage = [test loadTestImageFromFrameworkBundle];
    if (logoImage) {
        vc.logoImage = logoImage;
    }
    
    UIImage *bgImage = [test loadTestImageFromFrameworkXCassets];
    if (bgImage) {
        vc.bgImage = bgImage;
    }
    
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)demoUseModule {
    
    TestClass *test = [[TestClass alloc] init];
    [test useThirdpartyClassInFramework];

    ThirdpartyClass *thirdpartyClass = [[ThirdpartyClass alloc] init];
    [thirdpartyClass printLog];
}

#pragma mark -
#pragma mark - [CocoaPods: third party modules]

- (void)demoAFNetworking {
    AFNetworkReachabilityManager *manager;
    manager = [AFNetworkReachabilityManager sharedManager];
    NSLog(@"Is networking reachable: %@", [manager isReachable] ? @"YES" : @"NO");
}

- (void)demoSDWebImage {
    SDWebImageManager *manager;
    manager = [SDWebImageManager sharedManager];
    NSLog(@"Is SDWebImageManager running: %@", [manager isRunning] ? @"YES" : @"NO");
}

@end
