//
//  Invoker.m
//  DesignPattern
//
//  Created by baidu on 17/2/14.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "Invoker.h"

@interface Invoker ()

@property (nonatomic , strong) Command *command;

@end

@implementation Invoker

- (void)setUpCommand:(Command *)command {
    self.command = command;
}

- (void)action {
    [self.command execute];
}

@end
