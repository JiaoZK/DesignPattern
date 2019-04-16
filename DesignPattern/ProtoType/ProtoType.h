//
//  ProtoType.h
//  DesignPattern
//
//  Created by baidu on 17/2/13.
//  Copyright © 2017年 baidu. All rights reserved.
//

/***********************************************
 适用场景
 使用原型模式创建对象比直接new一个对象在性能上要好的多，因为Object类的clone方法是一个本地方法，它直接操作内存中的二进制流，特别是复制大对象时，性能的差别非常明显。
 **********************************************/

#import <Foundation/Foundation.h>

@interface ProtoType : NSObject <NSCopying, NSMutableCopying>

@property (nonatomic , copy) NSString *name;
@property (nonatomic , copy) NSString *type;

@end
