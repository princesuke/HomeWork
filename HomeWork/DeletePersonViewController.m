//
//  DeletePersonViewController.m
//  HomeWork
//
//  Created by kingmaster09 on 1/26/2557 BE.
//  Copyright (c) 2557 Mobile's iMac. All rights reserved.
//

#import "DeletePersonViewController.h"
#import "Person.h"

@interface DeletePersonViewController ()

@end

@implementation DeletePersonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
   // Person *temporaryPerson = _fullNamePerson[0];
    _namePersonLabel.text =  @"aaa";
    _lastNamePersonLabel.text = @"bb";
    
    
    
//    UIBarButtonItem *delButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(canclePerson:)];
//	self.navigationItem.rightBarButtonItem = delButton;
    
}

- (void)canclePerson:(id)sender
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
