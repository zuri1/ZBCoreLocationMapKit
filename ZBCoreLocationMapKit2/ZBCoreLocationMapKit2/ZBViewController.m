//
//  ZBViewController.m
//  ZBCoreLocationMapKit2
//
//  Created by Zuri Biringer on 11/21/13.
//  Copyright (c) 2013 Zuri Biringer. All rights reserved.
//

#import "ZBViewController.h"
#import <CoreLocation/CoreLocation.h>

@interface ZBViewController () <MKMapViewDelegate>

@end

@implementation ZBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    _theMapView.delegate = self;
    
    CLLocationCoordinate2D location;
    location.latitude = 80;
    location.longitude = 5;
    ZBAnnotation *firstAnnotation = [[ZBAnnotation alloc] initWithCoordinate:location];
    
    CLLocationCoordinate2D newLocation;
    newLocation.latitude = 70;
    newLocation.longitude = 10;
    ZBAnnotation *secondAnnotation = [[ZBAnnotation alloc] initWithCoordinate:newLocation];
    
    CLLocationCoordinate2D everettLocation;
    everettLocation.latitude = 47.59;
    everettLocation.longitude = -122.12;
    ZBAnnotation *everettAnnotation = [[ZBAnnotation alloc] initWithCoordinate:everettLocation];
    
    CLLocationCoordinate2D location4;
    location4.latitude = 48.0;
    location4.latitude = 122.0;
    ZBAnnotation *thelocation4 = [[ZBAnnotation alloc] initWithCoordinate:location4];
    
    [_theMapView addAnnotation:firstAnnotation];
    [_theMapView addAnnotation:secondAnnotation];
    [_theMapView addAnnotation:everettAnnotation];
    [_theMapView addAnnotation:thelocation4];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

@end
