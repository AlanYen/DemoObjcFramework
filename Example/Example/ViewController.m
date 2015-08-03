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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self DemoUIAndImage];
    [self DemoUseModule];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)DemoUIAndImage {
    
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

- (void)DemoUseModule {
    
    TestClass *test = [[TestClass alloc] init];
    [test useThirdpartyClassInFramework];

    ThirdpartyClass *thirdpartyClass = [[ThirdpartyClass alloc] init];
    [thirdpartyClass printLog];
}

@end
