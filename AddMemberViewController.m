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
@end
