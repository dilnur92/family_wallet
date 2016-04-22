//
//  EditMemberViewController.m
//  Kolesa_Test
//
//  Created by Dilnur Yuldashev on 4/22/16.
//  Copyright © 2016 Dilnur Yuldashev. All rights reserved.
//

#import "EditMemberViewController.h"

@implementation EditMemberViewController
@synthesize familyMember;

- (IBAction)back:(UIBarButtonItem *)sender {
    [super backToHomeScreen];
}

//here we merely set finances
- (IBAction)save:(UIBarButtonItem *)sender {
    //using phone4 element for finances
    //temporary fix due to time constraint
    familyMember.phone4 = _financeTextEdit.text;
    [super saveAndReturn];
}

-(void)viewDidLoad{
    [super viewDidLoad];
    _phoneOne.text = familyMember.phone1;
    _phoneTwo.text = familyMember.phone2;
}
@end
