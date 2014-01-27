//
//  AddPersonViewController.h
//  HomeWork
//
//  Created by Mobile's iMac on 1/23/2557 BE.
//  Copyright (c) 2557 Mobile's iMac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@class AddPersonViewController;

@protocol AddPersonViewControllerDelegate <NSObject>

- (void)AddPersonViewController:(AddPersonViewController *)addPersonVC gotPerson:(Person *)namePerson;

@end


@interface AddPersonViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *namePerson;
@property (weak, nonatomic) IBOutlet UITextField *lastNamePerson;

@property (nonatomic, weak) id<AddPersonViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UIImageView *photoPerson;

- (IBAction)submitPerson:(id)sender;
- (IBAction)takePhoto:(id)sender;

@end
