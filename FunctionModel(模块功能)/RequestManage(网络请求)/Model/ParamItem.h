//
//  ParamItem.h
//  lzinnerbus
//
//  Created by ios开发 on 16/7/20.
//  Copyright © 2016年 oilchem. All rights reserved.
//

#import "JSONModel.h"
@protocol ParamItem
@end
@interface ParamItem : JSONModel
@property (nonatomic, strong) NSString* key;
@property (nonatomic, strong) NSString* desc;
@property (nonatomic, assign) BOOL isNessary;
@end
