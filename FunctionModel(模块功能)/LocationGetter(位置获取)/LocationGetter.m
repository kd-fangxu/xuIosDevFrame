//
//  LocationGetter.m
//  lzinnerbus
//
//  Created by ios开发 on 2016/10/20.
//  Copyright © 2016年 oilchem. All rights reserved.
//

#import "LocationGetter.h"

@implementation LocationGetter
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self locMgr];
    }
    return self;
}

-(void)getCurrentLocation:(void (^)(CLLocation *))block{
    _locationBlock=block;
    [self startGetLocation];
}

-(CLLocationManager *)locMgr
{
    if (_locMgr==nil) {
        //1.创建位置管理器（定位用户的位置）
        self.locMgr=[[CLLocationManager alloc]init];
        //2.设置代理
        self.locMgr.delegate=self;
    }
    return _locMgr;
}

-(void) startGetLocation{

    if ([self.locMgr respondsToSelector:@selector(requestAlwaysAuthorization)]) {
        NSLog(@"requestAlwaysAuthorization");
        [self.locMgr requestAlwaysAuthorization];
    }
    //开始定位用户的位置
    [self.locMgr startUpdatingLocation];
    //每隔多少米定位一次（这里的设置为任何的移动）
    self.locMgr.distanceFilter=kCLDistanceFilterNone;
    //设置定位的精准度，一般精准度越高，越耗电（这里设置为精准度最高的，适用于导航应用）
    self.locMgr.desiredAccuracy=kCLLocationAccuracyBestForNavigation;
    //测试方法，计算两个位置之间的距离
    //    [self countDistance];
}

#pragma mark-CLLocationManagerDelegate


- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status
{
    switch (status) {
        case kCLAuthorizationStatusNotDetermined:
            if ([self.locMgr respondsToSelector:@selector(requestAlwaysAuthorization)]) {
                [self.locMgr requestAlwaysAuthorization];
            }
            break;
        default:
            break;


    }
}
/**
 53  *  当定位到用户的位置时，就会调用（调用的频率比较频繁）
 54  */
-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    //locations数组里边存放的是CLLocation对象，一个CLLocation对象就代表着一个位置
    CLLocation *loc = [locations firstObject];

    //维度：loc.coordinate.latitude
    //经度：loc.coordinate.longitude
    if (_locationBlock) {
        _locationBlock(loc);
    }
    NSLog(@"纬度=%f，经度=%f",loc.coordinate.latitude,loc.coordinate.longitude);
    NSLog(@"%d",locations.count);

    //停止更新位置（如果定位服务不需要实时更新的话，那么应该停止位置的更新）
    [self.locMgr stopUpdatingLocation];
    
}


@end
