//
//  Circle.m
//  DesignPattern
//
//  Created by baidu on 17/2/17.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "Circle.h"

@interface Circle () {
    int _radius;
    int _xPoint;
    int _yPoint;
}

@end

@implementation Circle

- (instancetype)initWithRadius:(int)radius xPoint:(int)x yPoint:(int)y drawAPI:(DrawAPI *)drawAPI {
    self = [super init];
    if (self) {
        _radius = radius;
        _xPoint = x;
        _yPoint = y;
        self.drawAPI = drawAPI;
    }
    return self;
}

- (void)draw {
    [self.drawAPI drawCircle:_radius xPoint:_xPoint yPoint:_yPoint];
}

@end
