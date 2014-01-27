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
    
   _namePersonLabel.text = _detailPerson.nameText;
   _lastNamePersonLabel.text  = _detailPerson.lastNameText;

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
   
    
    // Dispose of any resources that can be recreated.
}


- (IBAction)deletePersonSubmit:(id)sender {
//
     [self.delegate deletePersonViewController:self removePerson:_detailPerson];
     [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)closeButton:(id)sender {
   [self dismissViewControllerAnimated:YES completion:nil];
}

@end
