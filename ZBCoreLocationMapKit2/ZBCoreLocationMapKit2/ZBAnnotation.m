//
//  ZBAnnotation.m
//  ZBCoreLocationMapKit2
//
//  Created by Zuri Biringer on 11/21/13.
//  Copyright (c) 2013 Zuri Biringer. All rights reserved.
//

#import "ZBAnnotation.h"

@implementation ZBAnnotation
@synthesize coordinate;
@synthesize title = _title;
@synthesize subtitle = _subtitle;

- (id)initWithCoordinate:(CLLocationCoordinate2D)coord {
    self = [super init];
    
    if (self) {
        coordinate = coord;
    }
    
    return self;
}

- (NSString *)title {
    return _title;
}

- (NSString *)subtitle {
    return _subtitle;
}

//- (CLLocationCoordinate2D)coordinate {
//    return _coordinate;
//}

- (void)setCoordinate:(CLLocationCoordinate2D)coordinate
{
    // code
}

@end
