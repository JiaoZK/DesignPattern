//
//  Visitor.m
//  DesignPattern
//
//  Created by baidu on 17/2/13.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "Visitor.h"
#import "Element.h"

@implementation Visitor

- (void)visit:(id)element {
    [(Element *)element doSomeThing];
}

@end
