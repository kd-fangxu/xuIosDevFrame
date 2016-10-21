//
//  LocationGetter.h
//  lzinnerbus
//
//  Created by ios开发 on 2016/10/20.
//  Copyright © 2016年 oilchem. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
@interface LocationGetter : NSObject<CLLocationManagerDelegate>
@property(nonatomic,strong)CLLocationManager *locMgr;

@property (nonatomic,strong) void(^locationBlock) (CLLocation * location);

-(void) getCurrentLocation:(void(^) (CLLocation * location))block;

@end
