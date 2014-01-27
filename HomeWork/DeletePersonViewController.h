//
//  DeletePersonViewController.h
//  HomeWork
//
//  Created by kingmaster09 on 1/26/2557 BE.
//  Copyright (c) 2557 Mobile's iMac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@class DeletePersonViewController;

@protocol DeletePersonViewControllerDelegate <NSObject>

- (void)deletePersonViewController:(DeletePersonViewController *)deletePersonVC removePerson:(Person *)delelePerson;

@end

@interface DeletePersonViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *namePersonLabel;
@property (weak, nonatomic) IBOutlet UILabel *lastNamePersonLabel;

@property (weak, nonatomic) Person *detailPerson;
@property (nonatomic, assign) Person *deletePersonIndex;

@property (nonatomic, weak) id<DeletePersonViewControllerDelegate> delegate;

- (IBAction)deletePersonSubmit:(id)sender;
- (IBAction)closeButton:(id)sender;
@end
