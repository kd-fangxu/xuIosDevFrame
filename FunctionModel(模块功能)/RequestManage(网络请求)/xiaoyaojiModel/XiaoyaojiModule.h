//
//	XiaoyaojiModule.h
//
//	Create by 开发 ios on 10/1/2017
//	Copyright © 2017. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "XiaoyaojiFolder.h"

@interface XiaoyaojiModule : NSObject

@property (nonatomic, strong) NSString * createTime;
@property (nonatomic, strong) NSArray * folders;
@property (nonatomic, strong) NSString * idField;
@property (nonatomic, strong) NSString * lastUpdateTime;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * projectId;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end