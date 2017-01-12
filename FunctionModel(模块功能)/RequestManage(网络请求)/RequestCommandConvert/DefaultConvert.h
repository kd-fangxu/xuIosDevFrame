//
//  DefaultConvert.h
//  lzinnerbus
//
//  Created by ios开发 on 2017/1/10.
//  Copyright © 2017年 oilchem. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RequestManager.h"
#import "RequestMainMap.h"
#import "NSString+RegexCategory.h"
#import "NSDictionary+SafeAccess.h"
@interface DefaultConvert : NSObject<RequestDataProviderDelegate>
@property (nonatomic,strong) RequestMainMap  *requestMainMap;
@end
