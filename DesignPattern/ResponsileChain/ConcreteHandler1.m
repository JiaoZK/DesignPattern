//
//  ConcreteHandler1.m
//  DesignPattern
//
//  Created by baidu on 17/2/14.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "ConcreteHandler1.h"

@implementation ConcreteHandler1

- (Level *)getHandlerLevel {
    return [[Level alloc] initWithLevelNum:1];
}

- (Response *)response:(Request *)request {
    NSLog(@"-----请求由处理器1进行处理-----");
    return nil;
}

@end
