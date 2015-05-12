//
//  LocationDetailViewController.h
//  LocationList
//
//  Created by Fiseha on 5/12/15.
//  Copyright (c) 2015 Fiseha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface LocationDetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet MKMapView *mapview;
@property (strong, nonatomic)CLLocationManager* locationManager;

//creat a proxy property to receive the object from the LocationListViewController.

@end
