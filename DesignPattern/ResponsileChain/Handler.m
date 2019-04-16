//
//  Handler.m
//  DesignPattern
//
//  Created by baidu on 17/2/14.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "Handler.h"

@interface Handler ()

@property (nonatomic , strong) Handler *nextHandler;

@end

@implementation Handler

- (Response *)handleRequest:(Request *)request {
    Response *response = nil;
    if ([[self getHandlerLevel] above:[request getLevel]]) {
        response = [self response:request];
    }
    else {
        if (self.nextHandler) {
            [self.nextHandler handleRequest:request];
        }
        else {
            NSLog(@"-----没有合适的处理器-----");
        }
    }
    return response;
}

- (void)setUpNextHandler:(Handler *)handler {
    self.nextHandler = handler;
}

@end
