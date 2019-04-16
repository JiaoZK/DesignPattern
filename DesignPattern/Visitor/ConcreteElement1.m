//
//  ConcreteElement1.m
//  DesignPattern
//
//  Created by baidu on 17/2/13.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "ConcreteElement1.h"

@implementation ConcreteElement1

- (void)doSomeThing {
    NSLog(@"元素 1");
}

- (void)doSomeThing2 {
    NSLog(@"doSomeThing2 元素1");
}

- (void)accept:(IVisitor *)visitor {
    [visitor visit:self];
}

@end
