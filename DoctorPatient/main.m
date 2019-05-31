//
//  main.m
//  DoctorPatient
//
//  Created by Ekam Singh Dhaliwal on 2019-05-30.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DiseaseList.h"
#import "Doctor.h"
#import "Patient.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *input = [[InputCollector alloc] init];
        DiseaseList *prescriptions = [[DiseaseList alloc] init];
        Doctor *familyDoctor = [[Doctor alloc] initWithName:@"Dr.D" andSpecialization:@"Family Physician"];
        Patient *patient1 = [[Patient alloc] initWithName:@"Ekam Singh" andAge:25];
        [patient1 setHealthcardNumber:@"123456"];
        NSString *userSymptoms = [input inputForPrompt:@"What are your symptoms?"];
        [familyDoctor patientHistory:patient1];
        NSString *symptoms = [familyDoctor requestMedicationForPatient:patient1 Symptoms:userSymptoms];
//        NSString *yourPrescription = [DiseaseList prescriptionForSymptom:symptoms];
        NSLog(@"Your prescription is: %@", symptoms);
        
        
        
    }
    return 0;
}
