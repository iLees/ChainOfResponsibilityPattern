//
//  LeaveRequest.h
//  ChainOfResponsibilityPattern
//
//  Created by shaozhou li on 2018/2/28.
//  Copyright © 2018年 lisz. All rights reserved.
//  请假的基本信息类

#import <Foundation/Foundation.h>

@interface LeaveRequest : NSObject

/** 请假人 */
@property (nonatomic, strong, readonly) NSString *empName;
/** 请假天数 */
@property (nonatomic, assign, readonly) NSInteger leaveDays;
/** 请假理由 */
@property (nonatomic, strong, readonly) NSString *reason;

/**
 *  全量初始化方法
 *
 * @param empName 请假人姓名
 * @param leaveDays 请假天数
 * @param reson 请假理由
 * @return 本实例
 */
- (instancetype)initWithEmpName:(NSString *)empName
                      leaveDays:(NSInteger)leaveDays
                          reson:(NSString *)reson;

@end
