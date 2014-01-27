//
//  HomeViewController.m
//  HomeWork
//
//  Created by Mobile's iMac on 1/23/2557 BE.
//  Copyright (c) 2557 Mobile's iMac. All rights reserved.
//

#import "HomeViewController.h"
#import "AddPersonViewController.h"
#import "DeletePersonViewController.h"
#import "Person.h"

@interface HomeViewController ()<AddPersonViewControllerDelegate, DeletePersonViewControllerDelegate>

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
    
   // NSMutableArray *fullNamePerson = [[NSMutableArray alloc] init];
    //[fullNamePerson addObject:@"string1"];
   // [fullNamePerson addObject:@"string2"];
    //NSString * fullNameText = [NSString stringWithFormat:@"%@ %@", _namePerson, _lastNamePerson];
    //NSString *test = [randomSelection objectAtIndex:0];
   // NSLog(@"fullName= %@",fullNameText);
    /*for (NSNumber *num in fullNamePerson)
    {        
        //NSLog(@"%@", num);
    }*/
    
    _fullNamePerson = [NSMutableArray new];
    
    _personTable.dataSource = self;
    _personTable.delegate = self;

}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   return _fullNamePerson.count;
 
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    Person *temporaryPerson = _fullNamePerson[indexPath.row];
    cell.textLabel.text = [temporaryPerson fullName];
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DeletePersonViewController *deletePersonVC = [[DeletePersonViewController alloc] initWithNibName:@"DeletePersonViewController" bundle:nil];
    
    // = _fullNamePerson[indexPath.row];
    deletePersonVC.detailPerson = _fullNamePerson[indexPath.row];
//    deletePersonVC.indexPathForSelectedRow = indexPath;
    deletePersonVC.delegate = self;

   // [self.delegate HomeViewController:self gotPerson:temporaryPerson];
    
    
    [self.navigationController presentViewController:deletePersonVC animated:YES completion:nil];
}


- (void)insertPerson:(id)sender
{
    AddPersonViewController *addPersonVC = [[AddPersonViewController alloc] initWithNibName:@"AddPersonViewController" bundle:nil];
    addPersonVC.delegate = self;
    [self.navigationController pushViewController:addPersonVC animated:YES];

}

-(void)deletePersonViewController:(DeletePersonViewController *)deletePersonVC removePerson:(Person *)delelePerson
{
   // NSLog(@"aaa %d",indexPathForSelectedRow.row);
    [_fullNamePerson removeObject:delelePerson];
    [self.personTable reloadData];
}

-(void)deletePersonViewController:(DeletePersonViewController *)deletePersonVC editPerson:(Person *)editPerson
{
    [self.personTable reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)AddPersonViewController:(AddPersonViewController *)addPersonVC gotPerson:(Person *)namePerson
{
    
    [_fullNamePerson addObject:namePerson];
    
    [self.personTable reloadData];

    
}

@end
