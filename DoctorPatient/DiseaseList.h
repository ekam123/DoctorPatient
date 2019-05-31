//
//  DiseaseList.h
//  DoctorPatient
//
//  Created by Ekam Singh Dhaliwal on 2019-05-30.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum  {
    headache,
    cancer,
    runnynose,
    itchySkin,
    limbsFallingOff,
} Symptoms;

@interface DiseaseList : NSObject

@property Symptoms symptoms;

+ (NSString *)prescriptionForSymptom:(Symptoms)symptom;

@end

NS_ASSUME_NONNULL_END
