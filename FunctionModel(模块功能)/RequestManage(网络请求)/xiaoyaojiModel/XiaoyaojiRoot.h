//
//	XiaoyaojiRoot.h
//
//	Create by 开发 ios on 10/1/2017
//	Copyright © 2017. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "XiaoyaojiModule.h"
#import "XiaoyaojiProject.h"

@interface XiaoyaojiRoot : NSObject

@property (nonatomic, strong) NSArray * modules;
@property (nonatomic, strong) XiaoyaojiProject * project;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end