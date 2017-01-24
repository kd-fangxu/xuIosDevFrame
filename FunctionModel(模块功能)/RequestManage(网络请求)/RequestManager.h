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
#import "NSDictionary+Block.h"
#import "NSString+Trims.h"
#import "IYYAfnetEnergy.h"
@protocol RequestDataProviderDelegate <NSObject>

@required
-(RequestMainMap *_Nonnull) convertToRequestMainMap:(NSString * _Nonnull)configStr;
@end

@interface RequestManager : NSObject

@property (nonatomic,strong)  RequestMainMap* _Nullable  requestMainMap;
typedef  NSString  * _Nonnull(^ ConfigTextProviderBlock )();
@property (nonatomic,strong)  ConfigTextProviderBlock _Nonnull configBlock;

+(void) init:(ConfigTextProviderBlock _Nonnull) configBlock Delegate:(id<RequestDataProviderDelegate> _Nonnull) delegate ;


@property (nonatomic,strong) _Nullable id  <RequestDataProviderDelegate> commandPeoviderDelegate;
@property (nonatomic,strong) IYYAfnetEnergy *netEnergy;
@property (nonatomic,strong) NSString * _Nullable configText;//配置文件内容

+(RequestManager *_Nonnull)getInstance;


/**

 待废弃请求方法

 @param taskId     <#taskId description#>
 @param mapParam   <#mapParam description#>
 @param serializer <#serializer description#>
 @param success    <#success description#>
 @param failure    <#failure description#>
 */
-(void) doRequest:(NSString *_Nonnull) taskId
            param:(NSMutableDictionary *_Nullable)mapParam responseSerializer:(NSString * _Nonnull) serializer
          success:( void (^_Nullable)(NSURLSessionDataTask *_Nullable task , id _Nullable responseObject))success
          failure:(nullable void (^)(NSURLSessionDataTask * _Nullable task, NSError *_Nullable error))failure ;
/**
 根据taskid发送请求默认json数据（废弃不建议使用）
 @param taskId    任务id
 @param mapParam  参数
 @param success  block
 @param failure  block
 */
-(void) doRequest:(NSString *_Nonnull) taskId
            param:(NSMutableDictionary *_Nullable)mapParam
          success:(nullable void (^)(NSURLSessionDataTask *_Nullable task , id _Nullable responseObject) )success
          failure:(nullable void (^)(NSURLSessionDataTask * _Nullable task , NSError *_Nullable error))failure ;


/**
 发起一个基础请求（废弃不建议使用）

 @param baseUrl    <#baseUrl description#>
 @param params     <#params description#>
 @param serializer <#serializer description#>
 @param method     <#method description#>
 @param success    <#success description#>
 @param failure    <#failure description#>

 @return <#return value description#>
 */
-(NSURLSessionDataTask *) doCommonRequest:(NSString *_Nonnull) baseUrl
                                    param:(NSMutableDictionary *_Nullable) params
                       responseSerializer:(NSString *_Nonnull)serializer requestMethod:(NSString *) method
                                  success:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, id _Nullable responseObject))success
                                  failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nullable error))failure;


-(AFHTTPSessionManager *_Nonnull) getAFSessionManager;

-(NSString *_Nonnull) getRequestUrlBytaskId:(NSString *_Nullable) taskId;

-(NSURLSessionDataTask*) doCommonRequest:(NSString *)baseUrl
                                   param:(NSMutableDictionary *)params
                      responseSerializer:(NSString *)serializer
                           requestMethod:(NSString *)method
                            IsCacheFirst:(BOOL) cacheFlag
                                 success:(void (^)( id _Nullable))success
                                 failure:(void (^)( NSError * _Nullable))failure;

@end
