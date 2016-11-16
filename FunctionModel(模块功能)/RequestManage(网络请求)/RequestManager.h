//
//  RequestManager.h
//  lzinnerbus
//
//  Created by ios开发 on 16/7/18.
//  Copyright © 2016年 oilchem. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
#import "RequestMainMap.h"
#import "NSString+RegexCategory.h"
#import "NSString+UrlEncode.h"
#import "NSDictionary+URL.h"
#import "NSString+Trims.h"
@protocol RequestDataProviderDelegate <NSObject>

@required


@end
@interface RequestManager : NSObject
@property (nonatomic,strong)  RequestMainMap* _Nullable  requestMainMap;

+(RequestManager *_Nonnull)getInstance;

-(void) doRequest:(NSString *_Nonnull) taskId
            param:(NSMutableDictionary *_Nullable)mapParam responseSerializer:(NSString * _Nonnull) serializer
          success:( void (^_Nullable)(NSURLSessionDataTask *_Nullable task , id _Nullable responseObject))success
          failure:(nullable void (^)(NSURLSessionDataTask * _Nullable task, NSError *_Nullable error))failure ;
/**
 根据taskid发送请求默认json数据
 @param taskId    任务id
 @param mapParam  参数
 @param success  block
 @param failure  block
 */
-(void) doRequest:(NSString *_Nonnull) taskId
            param:(NSMutableDictionary *_Nullable)mapParam
          success:(nullable void (^)(NSURLSessionDataTask *_Nullable task , id _Nullable responseObject) )success
          failure:(nullable void (^)(NSURLSessionDataTask * _Nullable task , NSError *_Nullable error))failure ;


-(void) doCommonRequest:(NSString *_Nonnull) baseUrl param:(NSMutableDictionary *_Nullable) params responseSerializer:(NSString *_Nonnull)serializer uccess:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, id _Nullable responseObject))success failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nullable error))failure;


-(AFHTTPSessionManager *_Nonnull) getAFSessionManager;

-(NSString *_Nonnull) getRequestUrlBytaskId:(NSString *_Nullable) taskId;

@end
