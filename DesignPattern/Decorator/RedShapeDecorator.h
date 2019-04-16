//
//  RedShapeDecorator.h
//  DesignPattern
//
//  Created by baidu on 17/2/17.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "ShapeDecorator.h"

@interface RedShapeDecorator : ShapeDecorator

- (void)setRedBorder:(Shaper *)decoratedShape;

@end
