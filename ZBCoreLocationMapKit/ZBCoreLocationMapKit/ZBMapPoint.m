//
//  ZBMapPoint.m
//  ZBCoreLocationMapKit
//
//  Created by Zuri Biringer on 11/20/13.
//  Copyright (c) 2013 Zuri Biringer. All rights reserved.
//

#import "ZBMapPoint.h"

@implementation ZBMapPoint
@synthesize coordinate, title;

- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t
{
    self = [super init];
    if (self) {
        coordinate = c;
        [self setTitle:t];
    }
    return self;
}

- (id)init
{
    return [self initWithCoordinate:CLLocationCoordinate2DMake(43.07, -89.32) title:@"Hometown"];
}

@end
