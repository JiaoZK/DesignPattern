//
//  ConcreteHandler3.m
//  DesignPattern
//
//  Created by baidu on 17/2/14.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "ConcreteHandler3.h"

@implementation ConcreteHandler3

- (Level *)getHandlerLevel {
    return [[Level alloc] initWithLevelNum:5];
}

- (Response *)response:(Request *)request {
    NSLog(@"-----请求由处理器3进行处理-----");
    return nil;
}

@end
