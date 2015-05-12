//
//  AddLocationDelegate.h
//  LocationList
//
//  Created by Fiseha on 5/12/15.
//  Copyright (c) 2015 Fiseha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Location.h"

@protocol AddLocationDelegate <NSObject>
-(void)addLocation:(Location*)location;
@end
