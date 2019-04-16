//
//  Context.h
//  DesignPattern
//
//  Created by baidu on 17/2/14.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "IStrategy.h"

@interface Context : NSObject

- (void)setUpStrategy:(IStrategy *)strategy;

- (void)execute;

@end
