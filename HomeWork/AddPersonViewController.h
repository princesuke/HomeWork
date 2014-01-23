//
//  AddPersonViewController.h
//  HomeWork
//
//  Created by Mobile's iMac on 1/23/2557 BE.
//  Copyright (c) 2557 Mobile's iMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddPersonViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *namePerson;
@property (weak, nonatomic) IBOutlet UITextField *lastNamePerson;
- (IBAction)submitPerson:(id)sender;
@end
