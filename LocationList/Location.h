//
//  Location.h
//  LocationList
//
//  Created by Fiseha on 5/12/15.
//  Copyright (c) 2015 Fiseha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Location : NSObject

@property (strong, nonatomic)NSString* name;
@property (strong, nonatomic)NSString* address;
@property (strong, nonatomic)NSString* descriptionString;

-(id)initWithName:(NSString *)name andAddress:(NSString*)address andDescription:(NSString*)descriptionString;
           

@end
