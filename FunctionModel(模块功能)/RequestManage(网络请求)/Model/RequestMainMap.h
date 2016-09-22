//
//  RequestMainMap.h
//  lzinnerbus
//
//  Created by ios开发 on 16/7/19.
//  Copyright © 2016年 oilchem. All rights reserved.
//

#import "JSONModel.h"
#import "RequestItem.h"
@interface RequestMainMap : JSONModel
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* matchAppCode;
@property (nonatomic, strong) NSString* version;
@property (nonatomic, strong) NSString* domainName;
@property (nonatomic, strong) NSArray <RequestItem,ConvertOnDemand>* list; // array of list_Item


@end
