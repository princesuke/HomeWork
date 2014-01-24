//
//  Person.m
//  HomeWork
//
//  Created by Mobile's iMac on 1/24/2557 BE.
//  Copyright (c) 2557 Mobile's iMac. All rights reserved.
//

#import "Person.h"


@implementation Person

-(NSString *)fullName
{
    NSString * temporaryString = [NSString stringWithFormat:@"%@ %@",_nameText,_lastNameText];
    return temporaryString;
}


@end
