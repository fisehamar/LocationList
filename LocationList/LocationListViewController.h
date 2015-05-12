//
//  ViewController.h
//  LocationList
//
//  Created by Fiseha on 5/12/15.
//  Copyright (c) 2015 Fiseha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddLocationViewController.h"

@interface LocationListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, AddLocationDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic)NSMutableArray* locations;
@end

