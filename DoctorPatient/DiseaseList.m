//
//  DiseaseList.m
//  DoctorPatient
//
//  Created by Ekam Singh Dhaliwal on 2019-05-30.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import "DiseaseList.h"



@implementation DiseaseList



+ (NSString *)prescriptionForSymptom:(Symptoms)symptom {
    switch (symptom) {
        case headache:
            return @"Advil";
            break;
        case cancer:
            return @"Chemotherapy";
            break;
        case runnynose:
            return @"Allergen";
            break;
        case itchySkin:
            return @"SomeCream";
            break;
        case limbsFallingOff:
            return @"Death";
            break;
        default:
            break;
    }
    return @"Tell my your symptoms, mate!";
}

@end
