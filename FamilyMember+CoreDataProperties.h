//
//  FamilyMember+CoreDataProperties.h
//  Kolesa_Test
//
//  Created by Dilnur Yuldashev on 4/22/16.
//  Copyright © 2016 Dilnur Yuldashev. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FamilyMember.h"

NS_ASSUME_NONNULL_BEGIN

@interface FamilyMember (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *age;
@property (nullable, nonatomic, retain) NSData *image;
@property (nullable, nonatomic, retain) NSString *phone1;
@property (nullable, nonatomic, retain) NSString *phone2;
@property (nullable, nonatomic, retain) NSString *phone3;
@property (nullable, nonatomic, retain) NSString *phone4;
@property (nullable, nonatomic, retain) NSString *phone5;
@property (nullable, nonatomic, retain) NSDecimalNumber *financeUsd;

@end

NS_ASSUME_NONNULL_END
