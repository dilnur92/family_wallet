//
//  AddMemberViewController.m
//  Kolesa_Test
//
//  Created by Dilnur Yuldashev on 4/22/16.
//  Copyright © 2016 Dilnur Yuldashev. All rights reserved.
//

#import "AddMemberViewController.h"

@implementation AddMemberViewController
@synthesize familyMember;
@synthesize image;
- (IBAction)saveMember:(UIBarButtonItem *)sender {
    familyMember.name = _name.text;
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterDecimalStyle;
    familyMember.age = [f numberFromString:_age.text];
    NSData *imageData = UIImagePNGRepresentation(image.image);
    familyMember.image = imageData;
    //forgot to add gender to the model
    //so i just used phone5 as member gender
    if(_genderSwitch.selectedSegmentIndex == 0){
        familyMember.phone5 = @"male";
    
    }
    else{
        familyMember.phone5 = @"female";
    }
    familyMember.phone1 = _phoneOne.text;
    familyMember.phone2 = _phoneTwo.text;
    
    [super saveAndReturn];
}

- (IBAction)backButton:(UIBarButtonItem *)sender {
    [super backToHomeScreen];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    UIImage *img= [info objectForKey:UIImagePickerControllerOriginalImage];
    image.image = img;
    [picker dismissModalViewControllerAnimated:YES];
}

- (IBAction)addPhotoActionButton:(UIButton *)sender {
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc]init];
    imagePickerController.delegate = self;
    //imagePickerController.sourceType =  UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentModalViewController:imagePickerController animated:YES];
}

- (IBAction)genderChoiceButton:(UISegmentedControl *)sender {
    
}
@end
