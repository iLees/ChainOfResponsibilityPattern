//
//  Manager.m
//  ChainOfResponsibilityPattern
//
//  Created by shaozhou li on 2018/2/28.
//  Copyright © 2018年 lisz. All rights reserved.
//

#import "Manager.h"

@implementation Manager

- (BOOL)handleLeaveRequest:(LeaveRequest *)leaveReauest {
    if (leaveReauest.leaveDays <= 5 && leaveReauest.leaveDays >= 3) {
        NSLog(@"请假人：%@, 天数：%ld, 理由：%@", leaveReauest.empName, leaveReauest.leaveDays, leaveReauest.reason);
        NSLog(@"审批人：%@经理，审批通过!", self.name);
        return YES;
    } else {
        // 下一个审批者进行处理
        if (self.nextLeaveResponser) {
            return [self.nextLeaveResponser handleLeaveRequest:leaveReauest];
        } else {
            return NO;
        }
    }
}

@end
