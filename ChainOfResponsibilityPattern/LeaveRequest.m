//
//  LeaveRequest.m
//  ChainOfResponsibilityPattern
//
//  Created by shaozhou li on 2018/2/28.
//  Copyright © 2018年 lisz. All rights reserved.
//

#import "LeaveRequest.h"

@interface LeaveRequest()
/** 请假人 */
@property (nonatomic, strong) NSString *empName;
/** 请假天数 */
@property (nonatomic, assign) NSInteger leaveDays;
/** 请假理由 */
@property (nonatomic, strong) NSString *reason;

@end

@implementation LeaveRequest

- (instancetype)initWithEmpName:(NSString *)empName
                      leaveDays:(NSInteger)leaveDays
                          reson:(NSString *)reson {
    if (self = [super init]) {
        self.empName = empName;
        self.leaveDays = leaveDays;
        self.reason = reson;
    }
    return self;
}

@end
