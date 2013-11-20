//
//  ZBMapPoint.h
//  ZBCoreLocationMapKit
//
//  Created by Zuri Biringer on 11/20/13.
//  Copyright (c) 2013 Zuri Biringer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface ZBMapPoint : NSObject <MKAnnotation>
{
}
// A new designated initializer for instances of ZBMapPoint
- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t;

// This is a required property from MKAnnotation
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

// This is an optional property from MKAnnotation
@property (nonatomic, copy) NSString *title;

@end
