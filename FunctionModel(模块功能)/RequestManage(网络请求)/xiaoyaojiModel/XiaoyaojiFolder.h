//
//	XiaoyaojiFolder.h
//
//	Create by 开发 ios on 10/1/2017
//	Copyright © 2017. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "XiaoyaojiChildren.h"

@interface XiaoyaojiFolder : NSObject

@property (nonatomic, strong) NSArray * children;
@property (nonatomic, strong) NSString * createTime;
@property (nonatomic, strong) NSString * idField;
@property (nonatomic, strong) NSString * moduleId;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * projectId;
@property (nonatomic, assign) NSInteger sort;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end