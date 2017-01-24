//
//  IYYAfnetEnergy.h
//  NewLzShortMsg
//
//  Created by ios开发 on 2017/1/22.
//  Copyright © 2017年 oilchem. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
#import "PPNetworkHelper.h"
#import "AFNetworkCacheHelper.h"

@interface IYYAfnetEnergy : NSObject

/** 请求成功的Block */
typedef void(^HttpRequestSuccess)(id responseObject);

/** 请求失败的Block */
typedef void(^HttpRequestFailed)(NSError *error);

-(NSURLSessionDataTask *) doCommonRequestUrl:(NSString *_Nonnull) baseUrl
                                       param:(NSMutableDictionary *_Nullable) params
                          responseSerializer:(NSString *_Nonnull)serializer
                               requestMethod:(NSString *_Nonnull) method
                            isFromCacheFirst:(BOOL) cache
                                     success:(HttpRequestSuccess _Nullable) success
                                     failure:(HttpRequestFailed _Nullable)failure;
@end
