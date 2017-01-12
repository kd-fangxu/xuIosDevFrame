//
//	XiaoyaojiProject.m
//
//	Create by 开发 ios on 10/1/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "XiaoyaojiProject.h"

NSString *const kXiaoyaojiProjectCreateTime = @"createTime";
NSString *const kXiaoyaojiProjectDescriptionField = @"description";
NSString *const kXiaoyaojiProjectEditable = @"editable";
NSString *const kXiaoyaojiProjectEnvironments = @"environments";
NSString *const kXiaoyaojiProjectIdField = @"id";
NSString *const kXiaoyaojiProjectName = @"name";
NSString *const kXiaoyaojiProjectPermission = @"permission";
NSString *const kXiaoyaojiProjectStatus = @"status";
NSString *const kXiaoyaojiProjectUserId = @"userId";

@interface XiaoyaojiProject ()
@end
@implementation XiaoyaojiProject




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kXiaoyaojiProjectCreateTime] isKindOfClass:[NSNull class]]){
		self.createTime = dictionary[kXiaoyaojiProjectCreateTime];
	}	
	if(![dictionary[kXiaoyaojiProjectDescriptionField] isKindOfClass:[NSNull class]]){
		self.descriptionField = dictionary[kXiaoyaojiProjectDescriptionField];
	}	
	if(![dictionary[kXiaoyaojiProjectEditable] isKindOfClass:[NSNull class]]){
		self.editable = dictionary[kXiaoyaojiProjectEditable];
	}	
	if(![dictionary[kXiaoyaojiProjectEnvironments] isKindOfClass:[NSNull class]]){
		self.environments = dictionary[kXiaoyaojiProjectEnvironments];
	}	
	if(![dictionary[kXiaoyaojiProjectIdField] isKindOfClass:[NSNull class]]){
		self.idField = dictionary[kXiaoyaojiProjectIdField];
	}	
	if(![dictionary[kXiaoyaojiProjectName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kXiaoyaojiProjectName];
	}	
	if(![dictionary[kXiaoyaojiProjectPermission] isKindOfClass:[NSNull class]]){
		self.permission = dictionary[kXiaoyaojiProjectPermission];
	}	
	if(![dictionary[kXiaoyaojiProjectStatus] isKindOfClass:[NSNull class]]){
		self.status = dictionary[kXiaoyaojiProjectStatus];
	}	
	if(![dictionary[kXiaoyaojiProjectUserId] isKindOfClass:[NSNull class]]){
		self.userId = dictionary[kXiaoyaojiProjectUserId];
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
		dictionary[kXiaoyaojiProjectCreateTime] = self.createTime;
	}
	if(self.descriptionField != nil){
		dictionary[kXiaoyaojiProjectDescriptionField] = self.descriptionField;
	}
	if(self.editable != nil){
		dictionary[kXiaoyaojiProjectEditable] = self.editable;
	}
	if(self.environments != nil){
		dictionary[kXiaoyaojiProjectEnvironments] = self.environments;
	}
	if(self.idField != nil){
		dictionary[kXiaoyaojiProjectIdField] = self.idField;
	}
	if(self.name != nil){
		dictionary[kXiaoyaojiProjectName] = self.name;
	}
	if(self.permission != nil){
		dictionary[kXiaoyaojiProjectPermission] = self.permission;
	}
	if(self.status != nil){
		dictionary[kXiaoyaojiProjectStatus] = self.status;
	}
	if(self.userId != nil){
		dictionary[kXiaoyaojiProjectUserId] = self.userId;
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
		[aCoder encodeObject:self.createTime forKey:kXiaoyaojiProjectCreateTime];
	}
	if(self.descriptionField != nil){
		[aCoder encodeObject:self.descriptionField forKey:kXiaoyaojiProjectDescriptionField];
	}
	if(self.editable != nil){
		[aCoder encodeObject:self.editable forKey:kXiaoyaojiProjectEditable];
	}
	if(self.environments != nil){
		[aCoder encodeObject:self.environments forKey:kXiaoyaojiProjectEnvironments];
	}
	if(self.idField != nil){
		[aCoder encodeObject:self.idField forKey:kXiaoyaojiProjectIdField];
	}
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kXiaoyaojiProjectName];
	}
	if(self.permission != nil){
		[aCoder encodeObject:self.permission forKey:kXiaoyaojiProjectPermission];
	}
	if(self.status != nil){
		[aCoder encodeObject:self.status forKey:kXiaoyaojiProjectStatus];
	}
	if(self.userId != nil){
		[aCoder encodeObject:self.userId forKey:kXiaoyaojiProjectUserId];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.createTime = [aDecoder decodeObjectForKey:kXiaoyaojiProjectCreateTime];
	self.descriptionField = [aDecoder decodeObjectForKey:kXiaoyaojiProjectDescriptionField];
	self.editable = [aDecoder decodeObjectForKey:kXiaoyaojiProjectEditable];
	self.environments = [aDecoder decodeObjectForKey:kXiaoyaojiProjectEnvironments];
	self.idField = [aDecoder decodeObjectForKey:kXiaoyaojiProjectIdField];
	self.name = [aDecoder decodeObjectForKey:kXiaoyaojiProjectName];
	self.permission = [aDecoder decodeObjectForKey:kXiaoyaojiProjectPermission];
	self.status = [aDecoder decodeObjectForKey:kXiaoyaojiProjectStatus];
	self.userId = [aDecoder decodeObjectForKey:kXiaoyaojiProjectUserId];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	XiaoyaojiProject *copy = [XiaoyaojiProject new];

	copy.createTime = [self.createTime copy];
	copy.descriptionField = [self.descriptionField copy];
	copy.editable = [self.editable copy];
	copy.environments = [self.environments copy];
	copy.idField = [self.idField copy];
	copy.name = [self.name copy];
	copy.permission = [self.permission copy];
	copy.status = [self.status copy];
	copy.userId = [self.userId copy];

	return copy;
}
@end