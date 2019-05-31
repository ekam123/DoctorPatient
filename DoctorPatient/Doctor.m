//
//  Doctor.m
//  DoctorPatient
//
//  Created by Ekam Singh Dhaliwal on 2019-05-30.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import "Doctor.h"

@interface Doctor()
    
   @property NSMutableDictionary *patientSymptomHistory;

@end

@implementation Doctor

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _patientRecords = [[NSMutableArray alloc] init];
        _patientSymptomHistory = [[NSMutableDictionary alloc] init];
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

- (NSString *)requestMedicationForPatient:(Patient *)patient Symptoms:(NSString *)symptoms {
    int tmp = -1;
    if ([self checkPatientEligibility:patient]) {
        if ([symptoms isEqualToString:@"headache"]) {
            tmp = 0;
        }
        else if ([symptoms isEqualToString:@"cancer"]) {
            tmp = 1;
        }
        else if ([symptoms isEqualToString:@"runnynose"]) {
            tmp = 2;
        }
        else if ([symptoms isEqualToString:@"itchySkin"]) {
            tmp = 3;
        }
        else if ([symptoms isEqualToString:@"limbsFallingOff"]) {
            tmp = 4;
        }
        else if ([symptoms isEqualToString:@"headache"]) {
            tmp = 5;
        }
        else {
            tmp = 6; 
        }
    }
    NSArray *tmpKeys = [self.patientSymptomHistory allKeys];
    for (NSString *str in tmpKeys) {
        if (str == patient.healthcardNumber) {
            self.patientSymptomHistory[str] = symptoms;
        }
    }
    return [DiseaseList prescriptionForSymptom:tmp];
}

@end
