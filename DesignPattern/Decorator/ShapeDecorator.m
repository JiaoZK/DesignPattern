//
//  ShapeDecorator.m
//  DesignPattern
//
//  Created by baidu on 17/2/17.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "ShapeDecorator.h"

@implementation ShapeDecorator

- (instancetype)initWithShaper:(Shaper *)shape {
    self = [super init];
    if (self) {
        self.decoratedShape = shape;
    }
    return self;
}

- (void)draw {
    [self.decoratedShape draw];
}

@end
