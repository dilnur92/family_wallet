//
//  EditMemberViewController.h
//  Kolesa_Test
//
//  Created by Dilnur Yuldashev on 4/22/16.
//  Copyright © 2016 Dilnur Yuldashev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreViewController.h"
#import "FamilyMember.h"

@interface EditMemberViewController : CoreViewController
- (IBAction)back:(UIBarButtonItem *)sender;
@property (nonatomic, strong) FamilyMember *familyMember;
@property (weak, nonatomic) IBOutlet UILabel *phoneOne;
@property (weak, nonatomic) IBOutlet UILabel *phoneTwo;
@property (weak, nonatomic) IBOutlet UITextField *financeTextEdit;

@property (weak, nonatomic) IBOutlet UILabel *ageGenderLabel;
- (IBAction)save:(UIBarButtonItem *)sender;
@end
