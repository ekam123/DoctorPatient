//
//  Doctor.m
//  DoctorPatient
//
//  Created by Ekam Singh Dhaliwal on 2019-05-30.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _patientRecords = [[NSMutableArray alloc] init];
    }
    return self;
}

- (BOOL)checkPatientEligibility:(Patient *)patient {
    if (patient.healthcardNumber) {
        [self patientHistory:patient];
        return YES;
    }
    else {
        return NO;
    }
}

- (void)patientHistory:(Patient *)patient {
    for (NSString *num in self.patientRecords) {
        if (patient.healthcardNumber == num) {
            break;
        }
        [self.patientRecords addObject:patient];
    }
}

@end
