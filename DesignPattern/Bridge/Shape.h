//
//  Shape.h
//  DesignPattern
//
//  Created by baidu on 17/2/17.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DrawAPI.h"

@interface Shape : NSObject

@property (nonatomic , strong) DrawAPI *drawAPI;

- (void)draw;
@end
