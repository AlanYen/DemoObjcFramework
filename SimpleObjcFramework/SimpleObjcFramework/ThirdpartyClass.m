//
//  ThirdpartyClass.m
//  SimpleObjcFramework
//
//  Created by Alan.Yen on 2015/7/13.
//  Copyright (c) 2015年 17Life All rights reserved.
//

#import "ThirdpartyClass.h"

@implementation ThirdpartyClass

- (void)printLog {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSTimeZone *tz = [NSTimeZone timeZoneWithName:@"Asia/Taipei"];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    [dateFormatter setTimeZone:tz];
    
    NSDate *now = [NSDate date];
    NSString *dateString = [dateFormatter stringFromDate:now];
    NSLog(@"ThirdpartyClass in framework (%@)", dateString);
}

@end
