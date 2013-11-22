//
//  ZBViewController.h
//  ZBCoreLocationMapKit2
//
//  Created by Zuri Biringer on 11/21/13.
//  Copyright (c) 2013 Zuri Biringer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "ZBAnnotation.h"

@interface ZBViewController : UIViewController

@property (strong, nonatomic) IBOutlet MKMapView *theMapView;

@end
