//
//  DefaultConvert.m
//  lzinnerbus
//
//  Created by ios开发 on 2017/1/10.
//  Copyright © 2017年 oilchem. All rights reserved.
//

#import "DefaultConvert.h"

@implementation DefaultConvert
-(RequestMainMap *)convertToRequestMainMap:(NSString *)configStr{
  _requestMainMap=[[RequestMainMap alloc] initWithString:configStr.trimmingWhitespace error:nil];
    return  _requestMainMap;
}
@end
