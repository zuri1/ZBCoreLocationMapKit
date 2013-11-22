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
    _theMapView.showsUserLocation = YES;
    
    CLLocationCoordinate2D location;
    location.latitude = 80;
    location.longitude = 5;
    ZBAnnotation *firstAnnotation = [[ZBAnnotation alloc] initWithCoordinate:location Title:@"Cold"];
    
    CLLocationCoordinate2D newLocation;
    newLocation.latitude = 70;
    newLocation.longitude = 10;
    ZBAnnotation *secondAnnotation = [[ZBAnnotation alloc] initWithCoordinate:newLocation Title:@"Still Cold"];
    
    CLLocationCoordinate2D everettLocation;
    everettLocation.latitude = 47.59;
    everettLocation.longitude = -122.12;
    ZBAnnotation *everettAnnotation = [[ZBAnnotation alloc] initWithCoordinate:everettLocation Title:@"Yes"];
    
    CLLocationCoordinate2D location4;
    location4.latitude = 48.0;
    location4.longitude = -122.0;
    ZBAnnotation *thelocation4 = [[ZBAnnotation alloc] initWithCoordinate:location4 Title:@"No"];
    
    CLLocationCoordinate2D location5;
    location5.latitude = 47.9;
    location5.longitude = -122.1;
    ZBAnnotation *thelocation5 = [[ZBAnnotation alloc] initWithCoordinate:location5 Title:@"Swim here"];
    
    CLLocationCoordinate2D location6;
    location6.latitude = 47.96;
    location6.longitude = -122.2;
    ZBAnnotation *thelocation6 = [[ZBAnnotation alloc] initWithCoordinate:location6 Title:@"Secret couch"];
    
    [_theMapView addAnnotation:firstAnnotation];
    [_theMapView addAnnotation:secondAnnotation];
    [_theMapView addAnnotation:everettAnnotation];
    [_theMapView addAnnotation:thelocation4];
    [_theMapView addAnnotation:thelocation5];
    [_theMapView addAnnotation:thelocation6];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

@end
