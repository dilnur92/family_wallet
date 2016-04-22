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
    _navItem.title = familyMember.name;
    _ageGenderLabel.text = [[[familyMember.age stringValue] stringByAppendingString:@", "]stringByAppendingString:familyMember.phone5];
    NSData *data = familyMember.image;
    UIImage *im = [UIImage imageNamed:@"empty"];
    if(data) {
        if([data isKindOfClass: NSData.class]) {
            im = [UIImage imageWithData:data];
        }
    } else {
        NSLog(@"member.image is nil");
    }
    _image.image = im;
    
}
@end
