//
//  Context.m
//  DesignPattern
//
//  Created by baidu on 17/2/14.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "Context.h"

@interface Context ()

@property (nonatomic , strong) IStrategy *strategy;

@end

@implementation Context

- (void)setUpStrategy:(IStrategy *)strategy {
    self.strategy = strategy;
}

- (void)execute {
    [self.strategy doSomething];
}

@end
