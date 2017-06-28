//
//  MapViewController.m
//  HelpMe
//
//  Created by Katrina de Guzman on 2017-06-27.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//


#import "MapViewController.h"

@import Firebase;
#import <FirebaseDatabase/FirebaseDatabase.h>

@interface MapViewController ()
@property FIRDatabaseReference *ref;
@end

@implementation MapViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.ref=[[FIRDatabase database]reference];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self getData];
}
- (void) getData
{
    //    [[self.ref child:@"users"] observeSingleEventOfType:FIRDataEventTypeValue withBlock:^(FIRDataSnapshot * _Nonnull snapshot)
    //     {
    //         NSDictionary *dict = snapshot.value;
    //         NSLog(@"%@",dict);
    //
    MKPointAnnotation *point1 = [[MKPointAnnotation alloc] init];
    //49.281916, -123.108317
    
    NSString* latString =  [NSString stringWithFormat:@"49.281916"];
    NSString* longString = [NSString stringWithFormat:@"-123.108317"];
    //         NSString* latString =  [NSString stringWithFormat:@"%@", [dict valueForKey:@"lat"]];
    //         NSString* longString = [NSString stringWithFormat:@"%@", [dict valueForKey:@"long"]];
    CLLocationDegrees latitude = [latString doubleValue];
    CLLocationDegrees longitude = [longString doubleValue];
    
    point1.coordinate = CLLocationCoordinate2DMake(latitude, longitude);
    
    int regionRadius = 10000;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(point1.coordinate, regionRadius*2, regionRadius*2);
    [self.mapView setRegion:region];
    
    self.mapView.delegate = self;
    
    [self.mapView addAnnotation:point1];
    //     }];
}

@end

