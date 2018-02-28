//
//  LeaveResponseInterface.h
//  ChainOfResponsibilityPattern
//
//  Created by shaozhou li on 2018/2/28.
//  Copyright © 2018年 lisz. All rights reserved.
//  抽象类（接口）：管理责任链上对象的共同行为

#import <Foundation/Foundation.h>
#import "LeaveRequest.h"

@protocol LeaveResponseInterface <NSObject>

/** 下一个请假处理者 */
@property (nonatomic, strong) id<LeaveResponseInterface> nextLeaveResponser;

/** 请求处理方法 */
- (BOOL)handleLeaveRequest:(LeaveRequest *)leaveReauest;

@end
