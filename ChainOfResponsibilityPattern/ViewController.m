//
//  ViewController.m
//  ChainOfResponsibilityPattern
//
//  Created by shaozhou li on 2018/2/28.
//  Copyright © 2018年 lisz. All rights reserved.
//

#import "ViewController.h"
#import "Director.h"
#import "Manager.h"
#import "GeneralManager.h"
#import "LeaveRequest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 构建各领导人
    Director *a = [[Director alloc] initWithName:@"张三"];
    Manager *b = [[Manager alloc] initWithName:@"李四"];
    GeneralManager *c = [[GeneralManager alloc] initWithName:@"王五"];
    // 设置责任链关系
    a.nextLeaveResponser = b;
    b.nextLeaveResponser = c;
    // 开始请假
    LeaveRequest *leaveRequest = [[LeaveRequest alloc] initWithEmpName:@"小明" leaveDays:3 reson:@"旅游"];
    [a handleLeaveRequest:leaveRequest];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
