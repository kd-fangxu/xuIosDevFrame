//
//  DeviceTools.m
//  lzinnerbus
//
//  Created by ios开发 on 16/7/26.
//  Copyright © 2016年 oilchem. All rights reserved.
//

#import "DeviceTools.h"

@implementation DeviceTools
+ (NSString *)getDeviceId
{
    NSString * currentDeviceUUIDStr = [SSKeychain passwordForService:@" "account:@"uuid"];
    if (currentDeviceUUIDStr == nil || [currentDeviceUUIDStr isEqualToString:@""])
    {
    
        NSUUID * currentDeviceUUID  = [UIDevice currentDevice].identifierForVendor;
        currentDeviceUUIDStr = currentDeviceUUID.UUIDString;
        currentDeviceUUIDStr = [currentDeviceUUIDStr stringByReplacingOccurrencesOfString:@"-" withString:@""];
        currentDeviceUUIDStr = [currentDeviceUUIDStr lowercaseString];
        [SSKeychain setPassword: currentDeviceUUIDStr forService:@" "account:@"uuid"];
    }
    return currentDeviceUUIDStr;
}


+ (float)getIOSVersion
{
    return [[[UIDevice currentDevice] systemVersion] floatValue];
}

+(NSString *)getDeviceModel{
   return [UIDevice currentDevice].model ;
}
@end
