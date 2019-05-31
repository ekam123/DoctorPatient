//
//  Patient.h
//  DoctorPatient
//
//  Created by Ekam Singh Dhaliwal on 2019-05-30.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@interface Patient : NSObject

@property int age;
@property NSString *fullname;
@property NSString *healthcardNumber;

- (NSMutableArray *)patientSymptoms:(NSString *)symptoms;

- (instancetype)initWithName:(NSString *)name andAge:(int)age;

@end

NS_ASSUME_NONNULL_END
