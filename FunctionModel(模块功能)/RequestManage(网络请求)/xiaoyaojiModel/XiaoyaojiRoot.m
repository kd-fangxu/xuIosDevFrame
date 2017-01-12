//
//	XiaoyaojiRoot.m
//
//	Create by 开发 ios on 10/1/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "XiaoyaojiRoot.h"

NSString *const kXiaoyaojiRootModules = @"modules";
NSString *const kXiaoyaojiRootProject = @"project";

@interface XiaoyaojiRoot ()
@end
@implementation XiaoyaojiRoot




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(dictionary[kXiaoyaojiRootModules] != nil && [dictionary[kXiaoyaojiRootModules] isKindOfClass:[NSArray class]]){
		NSArray * modulesDictionaries = dictionary[kXiaoyaojiRootModules];
		NSMutableArray * modulesItems = [NSMutableArray array];
		for(NSDictionary * modulesDictionary in modulesDictionaries){
			XiaoyaojiModule * modulesItem = [[XiaoyaojiModule alloc] initWithDictionary:modulesDictionary];
			[modulesItems addObject:modulesItem];
		}
		self.modules = modulesItems;
	}
	if(![dictionary[kXiaoyaojiRootProject] isKindOfClass:[NSNull class]]){
		self.project = [[XiaoyaojiProject alloc] initWithDictionary:dictionary[kXiaoyaojiRootProject]];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.modules != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(XiaoyaojiModule * modulesElement in self.modules){
			[dictionaryElements addObject:[modulesElement toDictionary]];
		}
		dictionary[kXiaoyaojiRootModules] = dictionaryElements;
	}
	if(self.project != nil){
		dictionary[kXiaoyaojiRootProject] = [self.project toDictionary];
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
	if(self.modules != nil){
		[aCoder encodeObject:self.modules forKey:kXiaoyaojiRootModules];
	}
	if(self.project != nil){
		[aCoder encodeObject:self.project forKey:kXiaoyaojiRootProject];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.modules = [aDecoder decodeObjectForKey:kXiaoyaojiRootModules];
	self.project = [aDecoder decodeObjectForKey:kXiaoyaojiRootProject];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	XiaoyaojiRoot *copy = [XiaoyaojiRoot new];

	copy.modules = [self.modules copy];
	copy.project = [self.project copy];

	return copy;
}
@end