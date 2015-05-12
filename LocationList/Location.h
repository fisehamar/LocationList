//
//  Location.h
//  LocationList
//
//  Created by Fiseha on 5/12/15.
//  Copyright (c) 2015 Fiseha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Location : NSObject

@property (weak, nonatomic)NSString* name;
@property (weak, nonatomic)NSString* address;
@property (weak, nonatomic)NSString* descriptionString;

-(id)initWithName:(NSString *)name andAddress:(NSString*)address andDescription:(NSString*)descriptionString;
           

@end
