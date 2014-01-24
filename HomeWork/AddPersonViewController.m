//
//  AddPersonViewController.m
//  HomeWork
//
//  Created by Mobile's iMac on 1/23/2557 BE.
//  Copyright (c) 2557 Mobile's iMac. All rights reserved.
//

#import "AddPersonViewController.h"
#import "HomeViewController.h"
#import "Person.h"

@interface AddPersonViewController ()

@end

@implementation AddPersonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    
    self.title = @"New Person";
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submitPerson:(id)sender {
    
    
    Person *namePerson = [Person new];
    namePerson.nameText = _namePerson.text;
    namePerson.lastNameText = _lastNamePerson.text;
    [self.delegate AddPersonViewController:self gotPerson:namePerson];
//    NSString * fullName = [NSString stringWithFormat:@"%@ %@", _namePerson.text, _lastNamePerson.text];
//    NSLog(@"%@",fullName);
    //NSLog(@"namePerson= %@",namePerson.nameText);
  //  NSLog(@"name= %@, lastName= %@",_namePerson.text,_lastNamePerson.text);
   [self.navigationController popViewControllerAnimated:YES];
  
}

@end
