//
//  Mediator.m
//  DesignPattern
//
//  Created by baidu on 17/2/13.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "Mediator.h"

@implementation Mediator

- (void)AaffectB {
    int number = [self.conlleageA getTheNumber];
    [self.conlleageB setTheNumber:(number + 100)];
}

- (void)BaffectA {
    int number = [self.conlleageB getTheNumber];
    [self.conlleageA setTheNumber:(number - 100)];
}

@end
