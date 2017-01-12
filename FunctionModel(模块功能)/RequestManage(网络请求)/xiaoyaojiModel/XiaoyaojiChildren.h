//
//	XiaoyaojiChildren.h
//
//	Create by 开发 ios on 10/1/2017
//	Copyright © 2017. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>

@interface XiaoyaojiChildren : NSObject

@property (nonatomic, strong) NSString * contentType;
@property (nonatomic, strong) NSString * createTime;
@property (nonatomic, strong) NSString * dataType;
@property (nonatomic, strong) NSString * descriptionField;
@property (nonatomic, strong) NSString * example;
@property (nonatomic, strong) NSString * folderId;
@property (nonatomic, strong) NSString * idField;
@property (nonatomic, strong) NSString * lastUpdateTime;
@property (nonatomic, strong) NSString * moduleId;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * projectId;
@property (nonatomic, strong) NSString * protocol;
@property (nonatomic, strong) NSString * requestArgs;
@property (nonatomic, strong) NSString * requestHeaders;
@property (nonatomic, strong) NSString * requestMethod;
@property (nonatomic, strong) NSString * responseArgs;
@property (nonatomic, assign) NSInteger sort;
@property (nonatomic, strong) NSString * status;
@property (nonatomic, strong) NSString * url;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end