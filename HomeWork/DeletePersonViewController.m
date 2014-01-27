//
//  DeletePersonViewController.m
//  HomeWork
//
//  Created by kingmaster09 on 1/26/2557 BE.
//  Copyright (c) 2557 Mobile's iMac. All rights reserved.
//

#import "DeletePersonViewController.h"
#import "Person.h"

@interface DeletePersonViewController ()<UINavigationControllerDelegate, UIImagePickerControllerDelegate>

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
    
   _nameTextField.text = _detailPerson.nameText;
   _lastNameTextFiled.text  = _detailPerson.lastNameText;
   _photoPerson.image = _detailPerson.myPhoto;
    
    [_editPhotoButton setBackgroundImage:_detailPerson.myPhoto forState:UIControlStateNormal];
    
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

- (IBAction)editPerson:(id)sender {
    
    _detailPerson.nameText = _nameTextField.text;
    _detailPerson.lastNameText = _lastNameTextFiled.text;
    _detailPerson.myPhoto = _photoPerson.image;
    
    [self.delegate deletePersonViewController:self editPerson:_detailPerson];
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (IBAction)editPhoto:(id)sender {
    
    UIImagePickerController *pickerController = [[UIImagePickerController alloc]
                                                 init];
    pickerController.delegate = self;
    [self presentViewController:pickerController animated:YES completion:nil];
    
}

- (void) imagePickerController:(UIImagePickerController *)picker
         didFinishPickingImage:(UIImage *)image
                   editingInfo:(NSDictionary *)editingInfo
{
    self.photoPerson.image = image;
    [_editPhotoButton setBackgroundImage:image forState:UIControlStateNormal];
    [self dismissModalViewControllerAnimated:YES];
}

@end
