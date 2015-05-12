//
//  AddLocationViewController.h
//  LocationList
//
//  Created by Fiseha on 5/12/15.
//  Copyright (c) 2015 Fiseha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddLocationDelegate.h"

@interface AddLocationViewController : UIViewController <UITextViewDelegate, UITextFieldDelegate>
@property (weak, nonatomic) id<AddLocationDelegate>delegate;

@property (strong, nonatomic) IBOutlet UITextField *nameField;
@property (strong, nonatomic) IBOutlet UITextField *addressField;

@property (strong, nonatomic) IBOutlet UITextView *descriptionView;

- (IBAction)addLocation:(id)sender;

- (IBAction)backtoList:(id)sender;
@end
