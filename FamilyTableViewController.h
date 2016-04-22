//
//  FamilyTableViewController.h
//  Kolesa_Test
//
//  Created by Dilnur Yuldashev on 4/22/16.
//  Copyright © 2016 Dilnur Yuldashev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FamilyMember.h"
#import "AppDelegate.h"
#import "AddMemberViewController.h"
#import "EditMemberViewController.h"

@interface FamilyTableViewController : UITableViewController <NSFetchedResultsControllerDelegate>
@property (strong, nonatomic) FamilyMember * member;
@end
