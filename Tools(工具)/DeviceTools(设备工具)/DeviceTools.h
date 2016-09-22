//
//  DeviceTools.h
//  lzinnerbus
//
//  Created by ios开发 on 16/7/26.
//  Copyright © 2016年 oilchem. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Security/Security.h>
#import <UIKit/UIKit.h>
#import "SSKeychain.h"
@interface DeviceTools : NSObject
+ (NSString *)getDeviceId;//获取设备唯一码 通过keychain
+ (float)getIOSVersion;

+(NSString *) getDeviceModel;
@end
