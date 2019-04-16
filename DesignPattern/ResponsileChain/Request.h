//
//  Request.h
//  DesignPattern
//
//  Created by baidu on 17/2/14.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Level.h"

@interface Request : NSObject

- (instancetype)initWithLevel:(Level *)level;
- (Level *)getLevel;

@end
