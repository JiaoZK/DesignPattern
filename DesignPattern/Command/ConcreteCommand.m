//
//  ConcreteCommand.m
//  DesignPattern
//
//  Created by baidu on 17/2/14.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "ConcreteCommand.h"

@interface ConcreteCommand ()

@property (nonatomic , strong) Receiver *receiver;

@end

@implementation ConcreteCommand

- (instancetype)initWithReceiver:(Receiver *)receiver {
    self = [super init];
    if (self) {
        self.receiver = receiver;
    }
    return self;
}

- (void)execute {
    [self.receiver doSomething];
}

@end
