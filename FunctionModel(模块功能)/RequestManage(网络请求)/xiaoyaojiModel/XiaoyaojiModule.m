//
//	XiaoyaojiModule.m
//
//	Create by 开发 ios on 10/1/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "XiaoyaojiModule.h"

NSString *const kXiaoyaojiModuleCreateTime = @"createTime";
NSString *const kXiaoyaojiModuleFolders = @"folders";
NSString *const kXiaoyaojiModuleIdField = @"id";
NSString *const kXiaoyaojiModuleLastUpdateTime = @"lastUpdateTime";
NSString *const kXiaoyaojiModuleName = @"name";
NSString *const kXiaoyaojiModuleProjectId = @"projectId";

@interface XiaoyaojiModule ()
@end
@implementation XiaoyaojiModule




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kXiaoyaojiModuleCreateTime] isKindOfClass:[NSNull class]]){
		self.createTime = dictionary[kXiaoyaojiModuleCreateTime];
	}	
	if(dictionary[kXiaoyaojiModuleFolders] != nil && [dictionary[kXiaoyaojiModuleFolders] isKindOfClass:[NSArray class]]){
		NSArray * foldersDictionaries = dictionary[kXiaoyaojiModuleFolders];
		NSMutableArray * foldersItems = [NSMutableArray array];
		for(NSDictionary * foldersDictionary in foldersDictionaries){
			XiaoyaojiFolder * foldersItem = [[XiaoyaojiFolder alloc] initWithDictionary:foldersDictionary];
			[foldersItems addObject:foldersItem];
		}
		self.folders = foldersItems;
	}
	if(![dictionary[kXiaoyaojiModuleIdField] isKindOfClass:[NSNull class]]){
		self.idField = dictionary[kXiaoyaojiModuleIdField];
	}	
	if(![dictionary[kXiaoyaojiModuleLastUpdateTime] isKindOfClass:[NSNull class]]){
		self.lastUpdateTime = dictionary[kXiaoyaojiModuleLastUpdateTime];
	}	
	if(![dictionary[kXiaoyaojiModuleName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kXiaoyaojiModuleName];
	}	
	if(![dictionary[kXiaoyaojiModuleProjectId] isKindOfClass:[NSNull class]]){
		self.projectId = dictionary[kXiaoyaojiModuleProjectId];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.createTime != nil){
		dictionary[kXiaoyaojiModuleCreateTime] = self.createTime;
	}
	if(self.folders != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(XiaoyaojiFolder * foldersElement in self.folders){
			[dictionaryElements addObject:[foldersElement toDictionary]];
		}
		dictionary[kXiaoyaojiModuleFolders] = dictionaryElements;
	}
	if(self.idField != nil){
		dictionary[kXiaoyaojiModuleIdField] = self.idField;
	}
	if(self.lastUpdateTime != nil){
		dictionary[kXiaoyaojiModuleLastUpdateTime] = self.lastUpdateTime;
	}
	if(self.name != nil){
		dictionary[kXiaoyaojiModuleName] = self.name;
	}
	if(self.projectId != nil){
		dictionary[kXiaoyaojiModuleProjectId] = self.projectId;
	}
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
	if(self.createTime != nil){
		[aCoder encodeObject:self.createTime forKey:kXiaoyaojiModuleCreateTime];
	}
	if(self.folders != nil){
		[aCoder encodeObject:self.folders forKey:kXiaoyaojiModuleFolders];
	}
	if(self.idField != nil){
		[aCoder encodeObject:self.idField forKey:kXiaoyaojiModuleIdField];
	}
	if(self.lastUpdateTime != nil){
		[aCoder encodeObject:self.lastUpdateTime forKey:kXiaoyaojiModuleLastUpdateTime];
	}
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kXiaoyaojiModuleName];
	}
	if(self.projectId != nil){
		[aCoder encodeObject:self.projectId forKey:kXiaoyaojiModuleProjectId];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.createTime = [aDecoder decodeObjectForKey:kXiaoyaojiModuleCreateTime];
	self.folders = [aDecoder decodeObjectForKey:kXiaoyaojiModuleFolders];
	self.idField = [aDecoder decodeObjectForKey:kXiaoyaojiModuleIdField];
	self.lastUpdateTime = [aDecoder decodeObjectForKey:kXiaoyaojiModuleLastUpdateTime];
	self.name = [aDecoder decodeObjectForKey:kXiaoyaojiModuleName];
	self.projectId = [aDecoder decodeObjectForKey:kXiaoyaojiModuleProjectId];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	XiaoyaojiModule *copy = [XiaoyaojiModule new];

	copy.createTime = [self.createTime copy];
	copy.folders = [self.folders copy];
	copy.idField = [self.idField copy];
	copy.lastUpdateTime = [self.lastUpdateTime copy];
	copy.name = [self.name copy];
	copy.projectId = [self.projectId copy];

	return copy;
}
@end