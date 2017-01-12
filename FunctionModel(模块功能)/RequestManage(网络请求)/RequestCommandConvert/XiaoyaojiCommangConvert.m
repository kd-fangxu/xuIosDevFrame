
//
//  XiaoyaojiCommangConvert.m
//  lzinnerbus
//
//  Created by ios开发 on 2017/1/10.
//  Copyright © 2017年 oilchem. All rights reserved.
//

#import "XiaoyaojiCommangConvert.h"

@implementation XiaoyaojiCommangConvert
-(RequestMainMap *)convertToRequestMainMap:(NSString *)configStr{
    NSDictionary * mainDic=[NSDictionary dictionaryWithJsonString:configStr];
    XiaoyaojiRoot * root= [[XiaoyaojiRoot alloc] initWithDictionary:mainDic];
    NSLog(@"%@",root);
    RequestMainMap * reqBean=[[RequestMainMap alloc] init];
    [reqBean setMatchAppCode:@""];
    [reqBean setName:root.project.name];
    [reqBean setVersion:@""];
    NSString * environmentStr=root.project.environments;
    NSMutableArray * taskItemBeanList=[[NSMutableArray alloc] init];
    NSMutableArray * modulesBeanlist=root.modules;

    for (XiaoyaojiModule * moduleBean in modulesBeanlist) {
        for (XiaoyaojiFolder *folder in moduleBean.folders) {
            for (XiaoyaojiChildren * childrenBean in folder.children) {
                RequestItem * taskItemBean=[[RequestItem alloc] init];
                NSString * temUrl=childrenBean.url;
                if (![temUrl isValidUrl]) {
                    NSMutableArray * environmentArray=[self convertJson:environmentStr];
                    for (NSDictionary * dic in environmentArray) {
                        NSArray * varsArray=[dic arrayForKey:@"vars"];
                        for (NSDictionary * temDic in varsArray) {
                            NSString * tagStr=[NSString stringWithFormat:@"$%@$",[temDic stringForKey:@"name"]];
                            NSString * replaceMentStr=[temDic stringForKey:@"value"];
                            if([temUrl containsString:tagStr]){
                                temUrl=[temUrl stringByReplacingOccurrencesOfString:tagStr withString:replaceMentStr];
                                break;//配置的第一个地址  以后要改进  添加环境支持
                            }
                        }
                    }
                }

                if ([temUrl isValidUrl]) {//地址为正确地址
                    taskItemBean.Url=temUrl;
                    taskItemBean.isCache=false;
                    taskItemBean.requestMethod=childrenBean.requestMethod;
                    taskItemBean.TaskDesp=childrenBean.name;
                    taskItemBean.TaskId=childrenBean.name;

                    NSString * requestArgsStr=childrenBean.requestArgs;
                    NSMutableArray * paramList=[[NSMutableArray alloc] init];//参数列表
                    NSArray * paramArray=[self convertJson:requestArgsStr];
                    if (paramArray) {
                        for (NSDictionary * dic in paramArray) {
                            ParamItem * paramsBean=[[ParamItem alloc] init];
                            paramsBean.key=[dic stringForKey:@"name"];
                            if ([dic  hasKey:@"description"]) {
                                paramsBean.desc=[dic stringForKey:@"description"];
                            }else{
                                paramsBean.desc=@"无接口描述";
                            }
                            paramsBean.isNessary=[dic boolForKey:@"require"];
                            [paramList addObject:paramsBean];
                        }
                        taskItemBean.params=paramList ;
                    }

                }
                [taskItemBeanList addObject:taskItemBean];
            }
        }
    }
    reqBean.list=taskItemBeanList;
    return reqBean;
}


-(id) convertJson:(NSString *) jsonString{
    if (jsonString == nil) {
        return nil;
    }

    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    id data = [NSJSONSerialization JSONObjectWithData:jsonData
                                              options:NSJSONReadingMutableContainers
                                                error:&err];
    if(err)
    {
        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    return data;
    
}
@end
