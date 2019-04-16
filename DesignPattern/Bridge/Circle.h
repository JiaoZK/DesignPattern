//
//  Circle.h
//  DesignPattern
//
//  Created by baidu on 17/2/17.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "Shape.h"

@interface Circle : Shape

- (instancetype)initWithRadius:(int)radius xPoint:(int)x yPoint:(int)y drawAPI:(DrawAPI *)drawAPI;

@end
