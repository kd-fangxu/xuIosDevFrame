//
//  RequestManager.m
//  lzinnerbus
//
//  Created by ios开发 on 16/7/18.
//  Copyright © 2016年 oilchem. All rights reserved.
//

#import "RequestManager.h"

@implementation RequestManager
+(RequestManager *)getInstance{
    static RequestManager * manager=nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate,^{
        manager=[[RequestManager alloc] init];
        [manager requestMainMap];
    }
                  );
    return manager;
}



-(RequestMainMap*) requestMainMap{
    if (_requestMainMap==nil) {
        @try {
            NSString *path = [[NSBundle mainBundle] pathForResource:@"request" ofType:@"txt"];
            NSData* jsonData=[NSData dataWithContentsOfFile:path];
            NSString * result=[[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
            _requestMainMap=[[RequestMainMap alloc] initWithString:result.trimmingWhitespace error:nil];
        } @catch (NSException *exception) {

        } @finally {

        }
    }

    return  _requestMainMap;

}

-(void) doCommonRequest:(NSString *) baseUrl param:(NSMutableDictionary *) params responseSerializer:(NSString *)serializer uccess:(void (^)(NSURLSessionDataTask * _Nullable task, id _Nullable responseObject))success failure:(void (^)(NSURLSessionDataTask * _Nullable task, NSError * _Nullable))failure{
    AFSecurityPolicy *securityPolicy = [[AFSecurityPolicy alloc] init];
    [securityPolicy setAllowInvalidCertificates:YES];

    AFHTTPSessionManager *httpManager=[[AFHTTPSessionManager alloc] init];

    [httpManager setSecurityPolicy:securityPolicy];
    if([serializer.lowercaseString isEqualToString:@"json"]){
        httpManager.responseSerializer = [AFJSONResponseSerializer serializer];// json响应
    }else{
        httpManager.responseSerializer=[AFHTTPResponseSerializer serializer];//nsdata 响应
    }
    httpManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html", nil];
    NSString* GETURL=[NSString stringWithFormat:@"%@?%@",baseUrl,[params URLQueryString]];
    NSLog(@"GETURL:%@",GETURL);
    if ([GETURL isValidUrl]) {
        [httpManager GET:GETURL parameters:nil  success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            success(task,responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            failure(task,error);
        }];
    }



}

-(void)doRequest:(NSString *)taskId param:(NSMutableDictionary *)mapParam responseSerializer:(NSString *) serializer success:(void (^)(NSURLSessionDataTask * _Nullable task, id _Nullable responseObject))success failure:(void (^)(NSURLSessionDataTask * _Nullable task, NSError * _Nullable))failure{

    if ([self requestMainMap]==nil) {
        NSException *e = [NSException
                          exceptionWithName: @"异常情况"
                          reason: @"RequestMap 不允许为空"
                          userInfo: nil];
        @throw e;
    }
    RequestItem * currentRequestItem=[self getRequestItemByTaskId:[self requestMainMap] id:taskId];
    if (currentRequestItem==nil) {
        NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];
        [dic  setValue:[NSString stringWithFormat:@"配置文件不存在taskid为%@的请求项",taskId] forKey:@"reason"];
        NSError * error=[[NSError alloc] initWithDomain:@"请求出错" code:1 userInfo:dic];
        failure(nil,error);
        return;
    }
    NSString * urlString;
    if ([currentRequestItem.Url isValidUrl]) {
        urlString=currentRequestItem.Url;
    }else{
        urlString=[[self requestMainMap].domainName stringByAppendingString:currentRequestItem.Url];
    }
    urlString=[urlString stringByReplacingOccurrencesOfString:@" " withString:@""];
    //    httpManager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    //    httpManager.requestSerializer=[AFHTTPRequestSerializer serializer];

    [self doCommonRequest:urlString param:mapParam responseSerializer:serializer uccess:success failure:failure];

}
-(void)doRequest:(NSString *)taskId param:(NSMutableDictionary *)mapParam success:(void (^)(NSURLSessionDataTask * _Nullable, id _Nullable))success failure:(void (^)(NSURLSessionDataTask * _Nullable, NSError * _Nullable))failure{
    [self doRequest:taskId param:mapParam responseSerializer:@"json" success:success failure:failure];
}
/**
 *  @author lz developer
 *
 *  根据taskid获取对应的请求对象
 *
 *  @param requestMap <#requestMap description#>
 *  @param taskId     <#taskId description#>
 *
 *  @return <#return value description#>
 */
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

