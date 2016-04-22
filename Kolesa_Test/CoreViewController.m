//
//  CoreViewController.m
//  Kolesa_Test
//
//  Created by Dilnur Yuldashev on 4/22/16.
//  Copyright © 2016 Dilnur Yuldashev. All rights reserved.
//

#import "CoreViewController.h"
#import "AppDelegate.h"

@interface CoreViewController()
@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@end

@implementation CoreViewController
-(void) saveAndReturn{
    NSError *error = nil;
    if([self.managedObjectContext hasChanges]){
        if(![self.managedObjectContext save:&error]){
            NSLog(@"Failed to Save Data");
        }
        else{
            NSLog(@"Data was sucessfully saved");
        }
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void) backToHomeScreen{
    [self.managedObjectContext rollback];
    [self dismissViewControllerAnimated:YES completion:nil];

}
-(void) viewDidLoad{
    [super viewDidLoad];
}

-(NSManagedObjectContext *) managedObjectContext{
    return [(AppDelegate *) [[UIApplication sharedApplication]delegate]managedObjectContext];
}
-(id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName: nibNameOrNil bundle:nibBundleOrNil];
    if(self){
    
    }
    return self;
}

@end
