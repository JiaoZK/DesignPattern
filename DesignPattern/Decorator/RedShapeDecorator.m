//
//  RedShapeDecorator.m
//  DesignPattern
//
//  Created by baidu on 17/2/17.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "RedShapeDecorator.h"

@implementation RedShapeDecorator

- (instancetype)initWithShaper:(Shaper *)shape {
    self = [super initWithShaper:shape];
    if (self) {
        
    }
    return self;
}

- (void)draw {
    [self.decoratedShape draw];
    NSLog(@"Border Color: Red");
}

- (void)setRedBorder:(Shaper *)decoratedShape {
    NSLog(@"Border Color: Red");
}

@end
