//
//  Director.h
//  ChainOfResponsibilityPattern
//
//  Created by shaozhou li on 2018/2/28.
//  Copyright © 2018年 lisz. All rights reserved.
// 主任

#import <Foundation/Foundation.h>
#import "LeaveResponseInterface.h"

@interface Director : NSObject <LeaveResponseInterface>

/** 角色名称 */
@property (nonatomic, strong, readonly) NSString *name;

// 实现协议：LeaveResponseInterface
@property (nonatomic, strong) id<LeaveResponseInterface> nextLeaveResponser;

- (instancetype)initWithName:(NSString *)name;

// 实现协议：LeaveResponseInterface
- (BOOL)handleLeaveRequest:(LeaveRequest *)leaveReauest;

@end
