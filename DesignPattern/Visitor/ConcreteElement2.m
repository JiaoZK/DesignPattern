//
//  ConcreteElement2.m
//  DesignPattern
//
//  Created by baidu on 17/2/13.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "ConcreteElement2.h"

@implementation ConcreteElement2

- (void)doSomeThing {
    NSLog(@"元素 2");
}

- (void)doSomeThing2 {
    NSLog(@"doSomeThing2 元素 2");
}

- (void)accept:(IVisitor *)visitor {
    [visitor visit:self];
}

@end
