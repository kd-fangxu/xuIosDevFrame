//
//	XiaoyaojiChildren.m
//
//	Create by 开发 ios on 10/1/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "XiaoyaojiChildren.h"

NSString *const kXiaoyaojiChildrenContentType = @"contentType";
NSString *const kXiaoyaojiChildrenCreateTime = @"createTime";
NSString *const kXiaoyaojiChildrenDataType = @"dataType";
NSString *const kXiaoyaojiChildrenDescriptionField = @"description";
NSString *const kXiaoyaojiChildrenExample = @"example";
NSString *const kXiaoyaojiChildrenFolderId = @"folderId";
NSString *const kXiaoyaojiChildrenIdField = @"id";
NSString *const kXiaoyaojiChildrenLastUpdateTime = @"lastUpdateTime";
NSString *const kXiaoyaojiChildrenModuleId = @"moduleId";
NSString *const kXiaoyaojiChildrenName = @"name";
NSString *const kXiaoyaojiChildrenProjectId = @"projectId";
NSString *const kXiaoyaojiChildrenProtocol = @"protocol";
NSString *const kXiaoyaojiChildrenRequestArgs = @"requestArgs";
NSString *const kXiaoyaojiChildrenRequestHeaders = @"requestHeaders";
NSString *const kXiaoyaojiChildrenRequestMethod = @"requestMethod";
NSString *const kXiaoyaojiChildrenResponseArgs = @"responseArgs";
NSString *const kXiaoyaojiChildrenSort = @"sort";
NSString *const kXiaoyaojiChildrenStatus = @"status";
NSString *const kXiaoyaojiChildrenUrl = @"url";

@interface XiaoyaojiChildren ()
@end
@implementation XiaoyaojiChildren




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kXiaoyaojiChildrenContentType] isKindOfClass:[NSNull class]]){
		self.contentType = dictionary[kXiaoyaojiChildrenContentType];
	}	
	if(![dictionary[kXiaoyaojiChildrenCreateTime] isKindOfClass:[NSNull class]]){
		self.createTime = dictionary[kXiaoyaojiChildrenCreateTime];
	}	
	if(![dictionary[kXiaoyaojiChildrenDataType] isKindOfClass:[NSNull class]]){
		self.dataType = dictionary[kXiaoyaojiChildrenDataType];
	}	
	if(![dictionary[kXiaoyaojiChildrenDescriptionField] isKindOfClass:[NSNull class]]){
		self.descriptionField = dictionary[kXiaoyaojiChildrenDescriptionField];
	}	
	if(![dictionary[kXiaoyaojiChildrenExample] isKindOfClass:[NSNull class]]){
		self.example = dictionary[kXiaoyaojiChildrenExample];
	}	
	if(![dictionary[kXiaoyaojiChildrenFolderId] isKindOfClass:[NSNull class]]){
		self.folderId = dictionary[kXiaoyaojiChildrenFolderId];
	}	
	if(![dictionary[kXiaoyaojiChildrenIdField] isKindOfClass:[NSNull class]]){
		self.idField = dictionary[kXiaoyaojiChildrenIdField];
	}	
	if(![dictionary[kXiaoyaojiChildrenLastUpdateTime] isKindOfClass:[NSNull class]]){
		self.lastUpdateTime = dictionary[kXiaoyaojiChildrenLastUpdateTime];
	}	
	if(![dictionary[kXiaoyaojiChildrenModuleId] isKindOfClass:[NSNull class]]){
		self.moduleId = dictionary[kXiaoyaojiChildrenModuleId];
	}	
	if(![dictionary[kXiaoyaojiChildrenName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kXiaoyaojiChildrenName];
	}	
	if(![dictionary[kXiaoyaojiChildrenProjectId] isKindOfClass:[NSNull class]]){
		self.projectId = dictionary[kXiaoyaojiChildrenProjectId];
	}	
	if(![dictionary[kXiaoyaojiChildrenProtocol] isKindOfClass:[NSNull class]]){
		self.protocol = dictionary[kXiaoyaojiChildrenProtocol];
	}	
	if(![dictionary[kXiaoyaojiChildrenRequestArgs] isKindOfClass:[NSNull class]]){
		self.requestArgs = dictionary[kXiaoyaojiChildrenRequestArgs];
	}	
	if(![dictionary[kXiaoyaojiChildrenRequestHeaders] isKindOfClass:[NSNull class]]){
		self.requestHeaders = dictionary[kXiaoyaojiChildrenRequestHeaders];
	}	
	if(![dictionary[kXiaoyaojiChildrenRequestMethod] isKindOfClass:[NSNull class]]){
		self.requestMethod = dictionary[kXiaoyaojiChildrenRequestMethod];
	}	
	if(![dictionary[kXiaoyaojiChildrenResponseArgs] isKindOfClass:[NSNull class]]){
		self.responseArgs = dictionary[kXiaoyaojiChildrenResponseArgs];
	}	
	if(![dictionary[kXiaoyaojiChildrenSort] isKindOfClass:[NSNull class]]){
		self.sort = [dictionary[kXiaoyaojiChildrenSort] integerValue];
	}

	if(![dictionary[kXiaoyaojiChildrenStatus] isKindOfClass:[NSNull class]]){
		self.status = dictionary[kXiaoyaojiChildrenStatus];
	}	
	if(![dictionary[kXiaoyaojiChildrenUrl] isKindOfClass:[NSNull class]]){
		self.url = dictionary[kXiaoyaojiChildrenUrl];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.contentType != nil){
		dictionary[kXiaoyaojiChildrenContentType] = self.contentType;
	}
	if(self.createTime != nil){
		dictionary[kXiaoyaojiChildrenCreateTime] = self.createTime;
	}
	if(self.dataType != nil){
		dictionary[kXiaoyaojiChildrenDataType] = self.dataType;
	}
	if(self.descriptionField != nil){
		dictionary[kXiaoyaojiChildrenDescriptionField] = self.descriptionField;
	}
	if(self.example != nil){
		dictionary[kXiaoyaojiChildrenExample] = self.example;
	}
	if(self.folderId != nil){
		dictionary[kXiaoyaojiChildrenFolderId] = self.folderId;
	}
	if(self.idField != nil){
		dictionary[kXiaoyaojiChildrenIdField] = self.idField;
	}
	if(self.lastUpdateTime != nil){
		dictionary[kXiaoyaojiChildrenLastUpdateTime] = self.lastUpdateTime;
	}
	if(self.moduleId != nil){
		dictionary[kXiaoyaojiChildrenModuleId] = self.moduleId;
	}
	if(self.name != nil){
		dictionary[kXiaoyaojiChildrenName] = self.name;
	}
	if(self.projectId != nil){
		dictionary[kXiaoyaojiChildrenProjectId] = self.projectId;
	}
	if(self.protocol != nil){
		dictionary[kXiaoyaojiChildrenProtocol] = self.protocol;
	}
	if(self.requestArgs != nil){
		dictionary[kXiaoyaojiChildrenRequestArgs] = self.requestArgs;
	}
	if(self.requestHeaders != nil){
		dictionary[kXiaoyaojiChildrenRequestHeaders] = self.requestHeaders;
	}
	if(self.requestMethod != nil){
		dictionary[kXiaoyaojiChildrenRequestMethod] = self.requestMethod;
	}
	if(self.responseArgs != nil){
		dictionary[kXiaoyaojiChildrenResponseArgs] = self.responseArgs;
	}
	dictionary[kXiaoyaojiChildrenSort] = @(self.sort);
	if(self.status != nil){
		dictionary[kXiaoyaojiChildrenStatus] = self.status;
	}
	if(self.url != nil){
		dictionary[kXiaoyaojiChildrenUrl] = self.url;
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
	if(self.contentType != nil){
		[aCoder encodeObject:self.contentType forKey:kXiaoyaojiChildrenContentType];
	}
	if(self.createTime != nil){
		[aCoder encodeObject:self.createTime forKey:kXiaoyaojiChildrenCreateTime];
	}
	if(self.dataType != nil){
		[aCoder encodeObject:self.dataType forKey:kXiaoyaojiChildrenDataType];
	}
	if(self.descriptionField != nil){
		[aCoder encodeObject:self.descriptionField forKey:kXiaoyaojiChildrenDescriptionField];
	}
	if(self.example != nil){
		[aCoder encodeObject:self.example forKey:kXiaoyaojiChildrenExample];
	}
	if(self.folderId != nil){
		[aCoder encodeObject:self.folderId forKey:kXiaoyaojiChildrenFolderId];
	}
	if(self.idField != nil){
		[aCoder encodeObject:self.idField forKey:kXiaoyaojiChildrenIdField];
	}
	if(self.lastUpdateTime != nil){
		[aCoder encodeObject:self.lastUpdateTime forKey:kXiaoyaojiChildrenLastUpdateTime];
	}
	if(self.moduleId != nil){
		[aCoder encodeObject:self.moduleId forKey:kXiaoyaojiChildrenModuleId];
	}
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kXiaoyaojiChildrenName];
	}
	if(self.projectId != nil){
		[aCoder encodeObject:self.projectId forKey:kXiaoyaojiChildrenProjectId];
	}
	if(self.protocol != nil){
		[aCoder encodeObject:self.protocol forKey:kXiaoyaojiChildrenProtocol];
	}
	if(self.requestArgs != nil){
		[aCoder encodeObject:self.requestArgs forKey:kXiaoyaojiChildrenRequestArgs];
	}
	if(self.requestHeaders != nil){
		[aCoder encodeObject:self.requestHeaders forKey:kXiaoyaojiChildrenRequestHeaders];
	}
	if(self.requestMethod != nil){
		[aCoder encodeObject:self.requestMethod forKey:kXiaoyaojiChildrenRequestMethod];
	}
	if(self.responseArgs != nil){
		[aCoder encodeObject:self.responseArgs forKey:kXiaoyaojiChildrenResponseArgs];
	}
	[aCoder encodeObject:@(self.sort) forKey:kXiaoyaojiChildrenSort];	if(self.status != nil){
		[aCoder encodeObject:self.status forKey:kXiaoyaojiChildrenStatus];
	}
	if(self.url != nil){
		[aCoder encodeObject:self.url forKey:kXiaoyaojiChildrenUrl];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.contentType = [aDecoder decodeObjectForKey:kXiaoyaojiChildrenContentType];
	self.createTime = [aDecoder decodeObjectForKey:kXiaoyaojiChildrenCreateTime];
	self.dataType = [aDecoder decodeObjectForKey:kXiaoyaojiChildrenDataType];
	self.descriptionField = [aDecoder decodeObjectForKey:kXiaoyaojiChildrenDescriptionField];
	self.example = [aDecoder decodeObjectForKey:kXiaoyaojiChildrenExample];
	self.folderId = [aDecoder decodeObjectForKey:kXiaoyaojiChildrenFolderId];
	self.idField = [aDecoder decodeObjectForKey:kXiaoyaojiChildrenIdField];
	self.lastUpdateTime = [aDecoder decodeObjectForKey:kXiaoyaojiChildrenLastUpdateTime];
	self.moduleId = [aDecoder decodeObjectForKey:kXiaoyaojiChildrenModuleId];
	self.name = [aDecoder decodeObjectForKey:kXiaoyaojiChildrenName];
	self.projectId = [aDecoder decodeObjectForKey:kXiaoyaojiChildrenProjectId];
	self.protocol = [aDecoder decodeObjectForKey:kXiaoyaojiChildrenProtocol];
	self.requestArgs = [aDecoder decodeObjectForKey:kXiaoyaojiChildrenRequestArgs];
	self.requestHeaders = [aDecoder decodeObjectForKey:kXiaoyaojiChildrenRequestHeaders];
	self.requestMethod = [aDecoder decodeObjectForKey:kXiaoyaojiChildrenRequestMethod];
	self.responseArgs = [aDecoder decodeObjectForKey:kXiaoyaojiChildrenResponseArgs];
	self.sort = [[aDecoder decodeObjectForKey:kXiaoyaojiChildrenSort] integerValue];
	self.status = [aDecoder decodeObjectForKey:kXiaoyaojiChildrenStatus];
	self.url = [aDecoder decodeObjectForKey:kXiaoyaojiChildrenUrl];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	XiaoyaojiChildren *copy = [XiaoyaojiChildren new];

	copy.contentType = [self.contentType copy];
	copy.createTime = [self.createTime copy];
	copy.dataType = [self.dataType copy];
	copy.descriptionField = [self.descriptionField copy];
	copy.example = [self.example copy];
	copy.folderId = [self.folderId copy];
	copy.idField = [self.idField copy];
	copy.lastUpdateTime = [self.lastUpdateTime copy];
	copy.moduleId = [self.moduleId copy];
	copy.name = [self.name copy];
	copy.projectId = [self.projectId copy];
	copy.protocol = [self.protocol copy];
	copy.requestArgs = [self.requestArgs copy];
	copy.requestHeaders = [self.requestHeaders copy];
	copy.requestMethod = [self.requestMethod copy];
	copy.responseArgs = [self.responseArgs copy];
	copy.sort = self.sort;
	copy.status = [self.status copy];
	copy.url = [self.url copy];

	return copy;
}
@end