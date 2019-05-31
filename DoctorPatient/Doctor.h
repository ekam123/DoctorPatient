//
//  Doctor.h
//  DoctorPatient
//
//  Created by Ekam Singh Dhaliwal on 2019-05-30.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject

@property NSString *name;
@property NSString *specialization;

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization; 

@end

NS_ASSUME_NONNULL_END
