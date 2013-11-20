//
//  ZBViewController.m
//  ZBCoreLocationMapKit
//
//  Created by Zuri Biringer on 11/19/13.
//  Copyright (c) 2013 Zuri Biringer. All rights reserved.
//

#import "ZBViewController.h"

@interface ZBViewController () <CLLocationManagerDelegate, MKMapViewDelegate>

@end

@implementation ZBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    _theMapView.showsUserLocation = YES;
    
    ZBMapPoint *newMapPoint = [[ZBMapPoint alloc] init];
   
    MKAnnotationView *theAnnotationView = [[MKAnnotationView alloc] init];
    [_theMapView addSubview:theAnnotationView];
    
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    // If it's the user location, just return nil.
    if ([annotation isKindOfClass:[MKUserLocation class]])
        return nil;
    
    // Handle any custom annotatons.
    if ([annotation isKindOfClass:[ZBMapPoint class]])
    {
        // Try to deque an existing pin view first.
        MKPinAnnotationView *pinView = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:@"CustomPinAnnotationView"];
        
        if (!pinView)
        {
            // If an existing pin view was not available, create one.
            pinView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"CustomPinAnnotationView"];
            pinView.pinColor = MKPinAnnotationColorRed;
            pinView.animatesDrop = YES;
            pinView.canShowCallout = YES;
            
            // Add a detail disclosure button to the callout.
            UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
            [rightButton addTarget:self action:@selector(myShowDetailsMethod:) forControlEvents:UIControlEventTouchUpInside];
            pinView.rightCalloutAccessoryView = rightButton;
        }
        else
            pinView.annotation = annotation;
        
        return pinView;
    }
    
    return nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

    
}

@end
