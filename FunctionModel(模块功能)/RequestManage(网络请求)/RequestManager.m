//
//  RequestManager.m
//  lzinnerbus
//
//  Created by ios开发 on 16/7/18.
//  Copyright © 2016年 oilchem. All rights reserved.
//

#import "RequestManager.h"

@implementation RequestManager

static RequestManager * manager=nil;

+(void)init:(ConfigTextProviderBlock)configBlock Delegate:(id<RequestDataProviderDelegate>)delegate{
    static dispatch_once_t token;
    dispatch_once(&token,^{
        if(manager == nil){
            manager = [[RequestManager alloc]init];
            manager.configText=configBlock();
            manager.configText=  [manager.configText trimmingWhitespace];
            manager.commandPeoviderDelegate=delegate;
        }
    }

                  );
}


+(id)allocWithZone:(NSZone *)zone{
    @synchronized(self){
        if (!manager) {
            manager = [super allocWithZone:zone]; //确保使用同一块内存地址
            return manager;
        }
        return nil;
    }
}

+(RequestManager *)getInstance{
    if (manager==nil) {
        @throw @"RequestManager did not init";
    }
    [manager requestMainMap];
    return manager;
}



-(RequestMainMap*) requestMainMap{
    if (_requestMainMap==nil) {
        @try {
            if (_commandPeoviderDelegate&&[_commandPeoviderDelegate respondsToSelector:@selector(convertToRequestMainMap:)]) {
                _requestMainMap=[_commandPeoviderDelegate convertToRequestMainMap:_configText];
            }
        } @catch (NSException *exception) {

        } @finally {
        }
    }
    return  _requestMainMap;

}

-(void)doCommonRequest:(NSString *)baseUrl param:(NSMutableDictionary *)params responseSerializer:(NSString *)serializer requestMethod:(NSString *)method success:(void (^)(NSURLSessionDataTask * _Nullable, id _Nullable))success failure:(void (^)(NSURLSessionDataTask * _Nullable, NSError * _Nullable))failure{

    AFHTTPSessionManager *httpManager=[self getAFSessionManager];
    if([serializer.lowercaseString isEqualToString:@"json"]){
        httpManager.responseSerializer = [AFJSONResponseSerializer serializer];// json响应
    }else{
        httpManager.responseSerializer=[AFHTTPResponseSerializer serializer];//nsdata 响应
    }
 httpManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html",@"application/x-javascript", nil];
    NSString * GETURL=baseUrl;

    if ([method.lowercaseString isEqualToString:@"get"]) {
        [httpManager GET:GETURL parameters:params progress:nil success:success failure:failure];
    }else{
        [httpManager POST:GETURL parameters:params progress:nil success:success failure:failure];

    }
    //      NSString* GETURL=[NSString stringWithFormat:@"%@?%@",baseUrl,[params URLQueryString]];
}

-(AFHTTPSessionManager *)getAFSessionManager{
    AFSecurityPolicy *securityPolicy = [[AFSecurityPolicy alloc] init];
    [securityPolicy setAllowInvalidCertificates:YES];
    AFHTTPSessionManager *httpManager=[[AFHTTPSessionManager alloc] init];
    [httpManager setSecurityPolicy:securityPolicy];
    httpManager.responseSerializer=[AFHTTPResponseSerializer serializer];//nsdata 响应


    return httpManager;

}
-(void)doRequest:(NSString *)taskId param:(NSMutableDictionary *)mapParam responseSerializer:(NSString *) serializer success:(void (^)(NSURLSessionDataTask * _Nullable task, id _Nullable responseObject))success failure:(void (^)(NSURLSessionDataTask * _Nullable task, NSError * _Nullable))failure{

    if ([self requestMainMap]==nil) {
        NSException *e = [NSException
                          exceptionWithName: @"异常情况"
                          reason: @"RequestMap 不允许为空"
                          userInfo: nil];
        @throw e;
    }

    @try {
        NSString * urlString=[self getRequestUrlBytaskId:taskId];
        RequestItem * currentRequestItem=[self getRequestItemByTaskId:[self requestMainMap] id:taskId];
        for (ParamItem * paramItem in currentRequestItem.params) {
            if (paramItem.key!=nil&&![paramItem.key isEqualToString:@""]&&paramItem.isNessary&&![mapParam hasKey:paramItem.key]) {
                @throw[NSString stringWithFormat:@"缺少key值为%@得要参数",paramItem.key];
                return;
            }
        }
        if (urlString!=nil) {
            [self doCommonRequest:urlString param:mapParam responseSerializer:serializer requestMethod:currentRequestItem.requestMethod success:success failure:failure];
        }
    } @catch (NSException *exception) {
        NSLog(@"%@",exception);
    } @finally {

    }
}

-(void)doRequest:(NSString *)taskId param:(NSMutableDictionary *)mapParam success:(void (^)(NSURLSessionDataTask * _Nullable, id _Nullable))success failure:(void (^)(NSURLSessionDataTask * _Nullable, NSError * _Nullable))failure{
    [self doRequest:taskId param:mapParam responseSerializer:@"json" success:success failure:failure];
}

-(NSString *) getRequestUrlBytaskId:(NSString *) taskId{

    RequestItem * currentRequestItem=[self getRequestItemByTaskId:[self requestMainMap] id:taskId];
    if (currentRequestItem==nil) {
        NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];
        [dic  setValue:[NSString stringWithFormat:@"配置文件不存在taskid为%@的请求项",taskId] forKey:@"reason"];
        NSError * error=[[NSError alloc] initWithDomain:@"请求出错" code:1 userInfo:dic];
        NSException *e = [NSException
                          exceptionWithName: @"异常情况"
                          reason:[NSString stringWithFormat:@"配置文件不存在taskid为%@的请求项",taskId]
                          userInfo: dic];
        @throw e;

        //        failure(nil,error);
        return @"";
    }
    NSString * urlString;
    if ([currentRequestItem.Url isValidUrl]) {
        urlString=currentRequestItem.Url;
    }else{
        urlString=[[self requestMainMap].domainName stringByAppendingString:currentRequestItem.Url];
    }
    urlString=[urlString stringByReplacingOccurrencesOfString:@" " withString:@""];
    return  urlString;
}

-(RequestItem *) getRequestItemByTaskId:(RequestMainMap *) requestMap id:(NSString *) taskId{
    NSMutableArray<RequestItem * > * requestArray=[self requestMainMap].list;
    for (RequestItem *requestItem in requestArray) {
        //        NSLog(@"%@",requestItem.TaskId);
        if ([requestItem.TaskId isEqualToString:taskId]) {
            return  requestItem;
        }
    }
    
    return nil;
}


@end

