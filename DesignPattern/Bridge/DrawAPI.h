//
//  DrawAPI.h
//  DesignPattern
//
//  Created by baidu on 17/2/17.
//  Copyright © 2017年 baidu. All rights reserved.
//

/******************************************
 将抽象部分与实现部分分离，使它们都可以独立的变化。
 
 优点： 1、抽象和实现的分离。 2、优秀的扩展能力。 3、实现细节对客户透明。
 缺点：桥接模式的引入会增加系统的理解与设计难度，由于聚合关联关系建立在抽象层，要求开发者针对抽象进行设计与编程
 
 *****************************************/

#import <Foundation/Foundation.h>

@interface DrawAPI : NSObject

- (void)drawCircle:(int)radius xPoint:(int)x yPoint:(int)y;

@end
