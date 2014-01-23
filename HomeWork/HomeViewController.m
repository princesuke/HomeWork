//
//  HomeViewController.m
//  HomeWork
//
//  Created by Mobile's iMac on 1/23/2557 BE.
//  Copyright (c) 2557 Mobile's iMac. All rights reserved.
//

#import "HomeViewController.h"
#import "AddPersonViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    self.title = @"Person";
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertPerson:)];
	self.navigationItem.rightBarButtonItem = addButton;
    
    
}

- (void)insertPerson:(id)sender
{
    AddPersonViewController *addPersonVC = [[AddPersonViewController alloc] initWithNibName:@"AddPersonViewController" bundle:nil];
    [self.navigationController pushViewController:addPersonVC animated:YES];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
