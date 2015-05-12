//
//  AddLocationViewController.m
//  LocationList
//
//  Created by Fiseha on 5/12/15.
//  Copyright (c) 2015 Fiseha. All rights reserved.
//

#import "AddLocationViewController.h"

@interface AddLocationViewController ()

@end

@implementation AddLocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _nameField.delegate= self;
    _addressField.delegate= self;
    _descriptionView.delegate=self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return  YES;
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    if ([text isEqualToString:@"\n"]) {
        [_descriptionView resignFirstResponder];
        return NO;
    }
    else return YES;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)addLocation:(id)sender {
    Location* locationToAdd= [[Location alloc]initWithName:_nameField.text andAddress:_addressField.text andDescription:_descriptionView.text];
    if(_delegate!=nil)
    {
        [_delegate addLocation:locationToAdd];
        
    }
    [self dismissViewControllerAnimated:YES completion:nil];
     

}

- (IBAction)backtoList:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}




-(void)textViewDidBeginEditing:(UITextView *)textView {
    _descriptionView.text = @"";
    _descriptionView.textAlignment = NSTextAlignmentLeft;
}

@end
