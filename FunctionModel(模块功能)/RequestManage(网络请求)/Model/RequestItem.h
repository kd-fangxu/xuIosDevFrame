//
//  RequestItem.h
//  lzinnerbus
//
//  Created by ios开发 on 16/7/20.
//  Copyright © 2016年 oilchem. All rights reserved.
//

#import "JSONModel.h"
#import "ParamItem.h"
@protocol RequestItem
@end
@interface RequestItem : JSONModel

@property (nonatomic, strong) NSString* TaskId;
@property (nonatomic, strong) NSString* TaskDesp;
@property (nonatomic, strong) NSString* Url;
@property (nonatomic, strong) NSString* requestMethod;
@property (nonatomic, assign) BOOL isCache;
@property (nonatomic, strong) NSArray<ParamItem,ConvertOnDemand>* params; // array of params_Item

@end
