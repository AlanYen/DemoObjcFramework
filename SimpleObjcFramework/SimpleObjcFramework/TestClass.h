//
//  TestClass.h
//  SimpleObjcFramework
//
//  Created by Alan.Yen on 2015/7/13.
//  Copyright (c) 2015年 17Life All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TestViewController.h"

@interface TestClass : NSObject

- (void)printLog;
- (UIImage*)loadTestImageFromFrameworkBundle;
- (UIImage*)loadTestImageFromFrameworkXCassets;
- (TestViewController*)loadTestControllerFromFramework;
- (void)useThirdpartyClassInFramework;

@end
