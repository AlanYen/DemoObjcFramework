//
//  TestViewController.m
//  SimpleObjcFramework
//
//  Created by Alan.Yen on 2015/7/24.
//  Copyright (c) 2015年 17Life All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@property(nonatomic, weak) IBOutlet UIImageView *bgImageView;
@property(nonatomic, weak) IBOutlet UIImageView *logoImageView;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.bgImage) {
        [self.bgImageView setImage:self.bgImage];
    }

    if (self.logoImage) {
        [self.logoImageView setImage:self.logoImage];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
