//
//  ZBViewController.h
//  ZBCoreLocationMapKit
//
//  Created by Zuri Biringer on 11/19/13.
//  Copyright (c) 2013 Zuri Biringer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "ZBMapPoint.h"

@interface ZBViewController : UIViewController

@property (strong, nonatomic) IBOutlet MKMapView *theMapView;

@end
