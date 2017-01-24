//
//  IYYAfnetEnergy.m
//  NewLzShortMsg
//
//  Created by ios开发 on 2017/1/22.
//  Copyright © 2017年 oilchem. All rights reserved.
//

#import "IYYAfnetEnergy.h"

@implementation IYYAfnetEnergy

-(NSURLSessionDataTask *)doCommonRequestUrl:(NSString *)baseUrl param:(NSMutableDictionary *)params responseSerializer:(NSString *)serializer requestMethod:(NSString *)method isFromCacheFirst:(BOOL)cache success:(HttpRequestSuccess)success failure:(HttpRequestFailed)failure{
    if (cache&& [[AFNetworkCacheHelper getCache] containsObjectForKey:[AFNetworkCacheHelper cacheKeyWithURL:baseUrl parameters:params]]) {

        [AFNetworkCacheHelper httpCacheForURL:baseUrl parameters:params withBlock:^(id<NSCoding> object) {
            if (object) {
                success(object);
            }
        }];
        return  nil;
    }
    NSString * GETURL=baseUrl;
    if([serializer.lowercaseString isEqualToString:@"json"]){
        [PPNetworkHelper setResponseSerializer:PPResponseSerializerJSON];
    }else{
        [PPNetworkHelper setResponseSerializer:PPResponseSerializerHTTP];
    }
    if ([method.lowercaseString isEqualToString:@"get"]) {
        return  [PPNetworkHelper GET:GETURL parameters:params success:^(id responseObject) {
            success(responseObject);
        } failure:^(NSError *error) {
            failure(error);

        }];
    }else{//post
        return [PPNetworkHelper POST:GETURL parameters:params success:^(id responseObject) {
            success(responseObject);
        } failure:^(NSError *error) {
            failure(error);
        }];
    }
    return  nil;

}




//-(AFHTTPSessionManager *)getAFSessionManager{
//    AFSecurityPolicy *securityPolicy = [[AFSecurityPolicy alloc] init];
//    [securityPolicy setAllowInvalidCertificates:YES];
//    AFHTTPSessionManager *httpManager=[[AFHTTPSessionManager alloc] init];
//    [httpManager setSecurityPolicy:securityPolicy];
//    httpManager.responseSerializer=[AFHTTPResponseSerializer serializer];//nsdata 响应
//    return httpManager;
//    
//}
@end
