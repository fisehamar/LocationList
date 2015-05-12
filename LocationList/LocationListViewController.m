//
//  ViewController.m
//  LocationList
//
//  Created by Fiseha on 5/12/15.
//  Copyright (c) 2015 Fiseha. All rights reserved.
//

#define LOCATION @"toLocationDetail"
#define ADDLOCATION @"toAddLocation"
#import "LocationListViewController.h"



@interface LocationListViewController ()

@end

@implementation LocationListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _tableView.delegate=self;
    _tableView.dataSource=self;
    _locations = [NSMutableArray array];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _locations.count;
    
    
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString* cellID = @"Cell";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    return cell;
}

-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath {
    
    [self performSegueWithIdentifier:LOCATION sender:indexPath];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:ADDLOCATION ])
    {
        //set an AddLocationViewControoler object to the segue destination view controller
        //set the delgate property of AddLoctionViewController  to self
        }
    else if ([segue.identifier isEqualToString:LOCATION])
    {
        //create a pointer to an NSINDEXPATH object and asign the sender variable to it
        //get the object at the index path of the array according to the indexpath
        //assign the object to a proxy property located in LocationCiewControer that corosponds to the same
        //type. This will allow us to pass that entire object and display the location for that object
        
    }
        
        }



@end