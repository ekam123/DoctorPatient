//
//  Patient.m
//  DoctorPatient
//
//  Created by Ekam Singh Dhaliwal on 2019-05-30.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name andAge:(int)age
{
    self = [super init];
    if (self) {
        _fullname = name;
        _age = age;
    }
    return self;
}

- (NSMutableArray *)patientSymptoms:(NSString *)symptoms {
    return nil; 
}

@end
