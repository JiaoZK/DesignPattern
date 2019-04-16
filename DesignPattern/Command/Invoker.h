//
//  Invoker.h
//  DesignPattern
//
//  Created by baidu on 17/2/14.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Command.h"

@interface Invoker : NSObject

- (void)setUpCommand:(Command *)command;
- (void)action;

@end
