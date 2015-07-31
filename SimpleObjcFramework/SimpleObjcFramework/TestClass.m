//
//  TestLog.m
//  SimpleObjcFramework
//
//  Created by AlanYen on 2015/7/13.
//  Copyright (c) 2015年 Alan.Yen. All rights reserved.
//

#import "TestClass.h"
#import "TestViewController.h"
#import "ThirdpartyClass.h"

@implementation TestClass

- (void)printLog {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSTimeZone *tz = [NSTimeZone timeZoneWithName:@"Asia/Taipei"];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    [dateFormatter setTimeZone:tz];
    
    NSDate *now = [NSDate date];
    NSString *dateString = [dateFormatter stringFromDate:now];
    NSLog(@"TestClass in framework (%@)", dateString);
}

- (UIImage*)loadTestImageFromFrameworkBundle {
    NSBundle *frameworkBundle = [NSBundle bundleWithIdentifier:@"com.test.framework"];
    NSString *resourcePath = [frameworkBundle pathForResource:@"objective-c-logo" ofType:@"jpg"];
    UIImage *image = [UIImage imageWithContentsOfFile:resourcePath];
    return image;
}

- (UIImage*)loadTestImageFromFrameworkXCassets {
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0f) {
        NSBundle *frameworkBundle = [NSBundle bundleWithIdentifier:@"com.test.framework"];
        UIImage *image = [UIImage imageNamed:@"index1_bg"
                                    inBundle:frameworkBundle
               compatibleWithTraitCollection:nil];
        return image;
    }
    return nil;
}

- (TestViewController*)loadTestControllerFromFramework {
    NSBundle *frameworkBundle = [NSBundle bundleWithIdentifier:@"com.test.framework"];
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Test" bundle:frameworkBundle];
    TestViewController *vc = [sb instantiateViewControllerWithIdentifier:@"TestViewController"];
    return (TestViewController*)vc;
}

- (void)useThirdpartyClassInFramework {
    ThirdpartyClass *test = [[ThirdpartyClass alloc] init];
    [test printLog];
}

@end
