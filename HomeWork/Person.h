//
//  Person.h
//  HomeWork
//
//  Created by Mobile's iMac on 1/24/2557 BE.
//  Copyright (c) 2557 Mobile's iMac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (strong, nonatomic) NSString *nameText;
@property (strong, nonatomic) NSString *lastNameText;

-(NSString *)fullName;

@end
