//
//  Memento.h
//  DesignPattern
//
//  Created by baidu on 17/2/15.
//  Copyright © 2017年 baidu. All rights reserved.
//

/**************************************
 发起人：记录当前时刻的内部状态，负责定义哪些属于备份范围的状态，负责创建和恢复备忘录数据。
 备忘录：负责存储发起人对象的内部状态，在需要的时候提供发起人需要的内部状态。
 管理角色：对备忘录进行管理，保存和提供备忘录。
 
 备忘录模式的优点有：
 当发起人角色中的状态改变时，有可能这是个错误的改变，我们使用备忘录模式就可以把这个错误的改变还原。
 备份的状态是保存在发起人角色之外的，这样，发起人角色就不需要对各个备份的状态进行管理。
 备忘录模式的缺点：
 在实际应用中，备忘录模式都是多状态和多备份的，发起人角色的状态需要存储到备忘录对象中，对资源的消耗是比较严重的。
 
 感觉跟借助一个临时变量，互换a和b的值一样
 *************************************/

#import <Foundation/Foundation.h>

@interface Memento : NSObject

- (NSString *)getTheState;
- (void)setUpState:(NSString *)state;
- (instancetype)initWithState:(NSString *)state;

@end
