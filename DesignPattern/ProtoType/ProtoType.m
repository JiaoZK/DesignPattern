//
//  ProtoType.m
//  DesignPattern
//
//  Created by baidu on 17/2/13.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "ProtoType.h"

@implementation ProtoType

// 浅拷贝
//- (id)copyWithZone:(NSZone *)zone {
//    return self;
//}

// 深拷贝
- (id)copyWithZone:(NSZone *)zone {
    ProtoType *proto = [[[self class] allocWithZone:zone] init];
    proto.name = [self.name copy];
    proto.type = [self.type copy];
    return proto;
}

- (id)mutableCopyWithZone:(NSZone *)zone {
    ProtoType *proto = [[[self class] allocWithZone:zone] init];
    proto.name = [self.name copy];
    proto.type = [self.type copy];
    return proto;
}

@end
