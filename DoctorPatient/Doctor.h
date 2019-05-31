//
//  Doctor.h
//  DoctorPatient
//
//  Created by Ekam Singh Dhaliwal on 2019-05-30.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "DiseaseList.h"

NS_ASSUME_NONNULL_BEGIN



@interface Doctor : NSObject

@property NSString *name;
@property NSString *specialization;
@property NSMutableArray *patientRecords;


- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization;

- (BOOL)checkPatientEligibility:(Patient *)patient;

- (void)patientHistory:(Patient *)patient;

- (NSString *)requestMedicationForPatient:(Patient *)patient Symptoms:(NSString *)symptoms;



@end

NS_ASSUME_NONNULL_END
