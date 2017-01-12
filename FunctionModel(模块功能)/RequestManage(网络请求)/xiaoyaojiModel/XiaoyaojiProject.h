//
//	XiaoyaojiProject.h
//
//	Create by 开发 ios on 10/1/2017
//	Copyright © 2017. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>

@interface XiaoyaojiProject : NSObject

@property (nonatomic, strong) NSString * createTime;
@property (nonatomic, strong) NSString * descriptionField;
@property (nonatomic, strong) NSString * editable;
@property (nonatomic, strong) NSString * environments;
@property (nonatomic, strong) NSString * idField;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * permission;
@property (nonatomic, strong) NSString * status;
@property (nonatomic, strong) NSString * userId;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end