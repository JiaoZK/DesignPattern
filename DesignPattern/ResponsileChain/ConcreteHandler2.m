//
//  ConcreteHandler2.m
//  DesignPattern
//
//  Created by baidu on 17/2/14.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "ConcreteHandler2.h"

@implementation ConcreteHandler2

- (Level *)getHandlerLevel {
    return [[Level alloc] initWithLevelNum:3];
}

- (Response *)response:(Request *)request {
    NSLog(@"-----请求由处理器2进行处理-----");
    return nil;
}

@end
