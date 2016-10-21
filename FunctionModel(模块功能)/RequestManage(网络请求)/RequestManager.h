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
            param:(NSMutableDictionary *_Nullable)mapParam responseSerializer:(NSString *) serializer
          success:(nullable void (^)(NSURLSessionDataTask *_Nullable task , id _Nullable responseObject) )success
          failure:(nullable void (^)(NSURLSessionDataTask * _Nullable task, NSError *_Nullable error))failure ;


/**
 *  @author lz developer
 *
 * 默认json
 *
 *  @param taskId   <#taskId description#>
 *  @param mapParam <#mapParam description#>
 *  @param success  <#success description#>
 *  @param failure  <#failure description#>
 */
-(void) doRequest:(NSString *_Nonnull) taskId
            param:(NSMutableDictionary *_Nullable)mapParam
          success:(nullable void (^)(NSURLSessionDataTask *_Nullable task , id _Nullable responseObject) )success
          failure:(nullable void (^)(NSURLSessionDataTask * _Nullable task, NSError *_Nullable error))failure ;




-(void) doCommonRequest:(NSString *) baseUrl param:(NSMutableDictionary *) params responseSerializer:(NSString *)serializer uccess:(void (^)(NSURLSessionDataTask * _Nullable task, id _Nullable responseObject))success failure:(void (^)(NSURLSessionDataTask * _Nullable task, NSError * _Nullable error))failure;

-(AFHTTPSessionManager *_Nonnull) getAFSessionManager;

-(NSString *_Nonnull) getRequestUrlBytaskId:(NSString *_Nullable) taskId;

@end
