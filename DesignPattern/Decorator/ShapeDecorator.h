//
//  ShapeDecorator.h
//  DesignPattern
//
//  Created by baidu on 17/2/17.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "Shaper.h"

@interface ShapeDecorator : Shaper

@property (nonatomic , strong) Shaper *decoratedShape;

- (instancetype)initWithShaper:(Shaper *)shape;

@end
