//
//  Employee.h
//  DesignPattern
//
//  Created by baidu on 17/2/17.
//  Copyright © 2017年 baidu. All rights reserved.
//

/**************************************
 意图：将对象组合成树形结构以表示"部分-整体"的层次结构。组合模式使得用户对单个对象和组合对象的使用具有一致性。
 主要解决：它在我们树型结构的问题中，模糊了简单元素和复杂元素的概念，客户程序可以向处理简单元素一样来处理复杂元素，从而使得客户程序与复杂元素的内部结构解耦。
 优点： 1、高层模块调用简单。 2、节点自由增加。
 缺点：在使用组合模式时，其叶子和树枝的声明都是实现类，而不是接口，违反了依赖倒置原则。
 *************************************/

#import <Foundation/Foundation.h>

@interface Employee : NSObject

- (instancetype)initWithName:(NSString *)name dept:(NSString *)dept salary:(NSInteger)salary;

- (void)add:(Employee *)employee;
- (void)remove:(Employee *)employee;
- (NSArray *)getSubordinates;
- (NSString *)getLogString;

@end
