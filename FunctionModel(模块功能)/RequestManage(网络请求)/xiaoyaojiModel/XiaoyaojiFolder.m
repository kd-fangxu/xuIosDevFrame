//
//	XiaoyaojiFolder.m
//
//	Create by 开发 ios on 10/1/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "XiaoyaojiFolder.h"

NSString *const kXiaoyaojiFolderChildren = @"children";
NSString *const kXiaoyaojiFolderCreateTime = @"createTime";
NSString *const kXiaoyaojiFolderIdField = @"id";
NSString *const kXiaoyaojiFolderModuleId = @"moduleId";
NSString *const kXiaoyaojiFolderName = @"name";
NSString *const kXiaoyaojiFolderProjectId = @"projectId";
NSString *const kXiaoyaojiFolderSort = @"sort";

@interface XiaoyaojiFolder ()
@end
@implementation XiaoyaojiFolder




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(dictionary[kXiaoyaojiFolderChildren] != nil && [dictionary[kXiaoyaojiFolderChildren] isKindOfClass:[NSArray class]]){
		NSArray * childrenDictionaries = dictionary[kXiaoyaojiFolderChildren];
		NSMutableArray * childrenItems = [NSMutableArray array];
		for(NSDictionary * childrenDictionary in childrenDictionaries){
			XiaoyaojiChildren * childrenItem = [[XiaoyaojiChildren alloc] initWithDictionary:childrenDictionary];
			[childrenItems addObject:childrenItem];
		}
		self.children = childrenItems;
	}
	if(![dictionary[kXiaoyaojiFolderCreateTime] isKindOfClass:[NSNull class]]){
		self.createTime = dictionary[kXiaoyaojiFolderCreateTime];
	}	
	if(![dictionary[kXiaoyaojiFolderIdField] isKindOfClass:[NSNull class]]){
		self.idField = dictionary[kXiaoyaojiFolderIdField];
	}	
	if(![dictionary[kXiaoyaojiFolderModuleId] isKindOfClass:[NSNull class]]){
		self.moduleId = dictionary[kXiaoyaojiFolderModuleId];
	}	
	if(![dictionary[kXiaoyaojiFolderName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kXiaoyaojiFolderName];
	}	
	if(![dictionary[kXiaoyaojiFolderProjectId] isKindOfClass:[NSNull class]]){
		self.projectId = dictionary[kXiaoyaojiFolderProjectId];
	}	
	if(![dictionary[kXiaoyaojiFolderSort] isKindOfClass:[NSNull class]]){
		self.sort = [dictionary[kXiaoyaojiFolderSort] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.children != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(XiaoyaojiChildren * childrenElement in self.children){
			[dictionaryElements addObject:[childrenElement toDictionary]];
		}
		dictionary[kXiaoyaojiFolderChildren] = dictionaryElements;
	}
	if(self.createTime != nil){
		dictionary[kXiaoyaojiFolderCreateTime] = self.createTime;
	}
	if(self.idField != nil){
		dictionary[kXiaoyaojiFolderIdField] = self.idField;
	}
	if(self.moduleId != nil){
		dictionary[kXiaoyaojiFolderModuleId] = self.moduleId;
	}
	if(self.name != nil){
		dictionary[kXiaoyaojiFolderName] = self.name;
	}
	if(self.projectId != nil){
		dictionary[kXiaoyaojiFolderProjectId] = self.projectId;
	}
	dictionary[kXiaoyaojiFolderSort] = @(self.sort);
	return dictionary;

}

/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder
{
	if(self.children != nil){
		[aCoder encodeObject:self.children forKey:kXiaoyaojiFolderChildren];
	}
	if(self.createTime != nil){
		[aCoder encodeObject:self.createTime forKey:kXiaoyaojiFolderCreateTime];
	}
	if(self.idField != nil){
		[aCoder encodeObject:self.idField forKey:kXiaoyaojiFolderIdField];
	}
	if(self.moduleId != nil){
		[aCoder encodeObject:self.moduleId forKey:kXiaoyaojiFolderModuleId];
	}
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kXiaoyaojiFolderName];
	}
	if(self.projectId != nil){
		[aCoder encodeObject:self.projectId forKey:kXiaoyaojiFolderProjectId];
	}
	[aCoder encodeObject:@(self.sort) forKey:kXiaoyaojiFolderSort];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.children = [aDecoder decodeObjectForKey:kXiaoyaojiFolderChildren];
	self.createTime = [aDecoder decodeObjectForKey:kXiaoyaojiFolderCreateTime];
	self.idField = [aDecoder decodeObjectForKey:kXiaoyaojiFolderIdField];
	self.moduleId = [aDecoder decodeObjectForKey:kXiaoyaojiFolderModuleId];
	self.name = [aDecoder decodeObjectForKey:kXiaoyaojiFolderName];
	self.projectId = [aDecoder decodeObjectForKey:kXiaoyaojiFolderProjectId];
	self.sort = [[aDecoder decodeObjectForKey:kXiaoyaojiFolderSort] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	XiaoyaojiFolder *copy = [XiaoyaojiFolder new];

	copy.children = [self.children copy];
	copy.createTime = [self.createTime copy];
	copy.idField = [self.idField copy];
	copy.moduleId = [self.moduleId copy];
	copy.name = [self.name copy];
	copy.projectId = [self.projectId copy];
	copy.sort = self.sort;

	return copy;
}
@end