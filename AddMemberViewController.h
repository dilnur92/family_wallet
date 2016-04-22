//
//  AddMemberViewController.h
//  Kolesa_Test
//
//  Created by Dilnur Yuldashev on 4/22/16.
//  Copyright © 2016 Dilnur Yuldashev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreViewController.h"
#import "FamilyMember.h"
@interface AddMemberViewController : CoreViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (nonatomic, strong) FamilyMember *familyMember;
- (IBAction)saveMember:(UIBarButtonItem *)sender;
- (IBAction)backButton:(UIBarButtonItem *)sender;
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *age;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UIButton *addPhotoButton;
@property (nonatomic, retain) UIImagePickerController * imageController;

- (IBAction)addPhotoActionButton:(UIButton *)sender;

@end
