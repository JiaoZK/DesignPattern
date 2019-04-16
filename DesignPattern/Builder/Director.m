//
//  Director.m
//  DesignPattern
//
//  Created by baidu on 17/2/10.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "Director.h"
#import "Builder.h"
#import "ConcreteBuilder.h"

@interface Director ()

@property (nonatomic , strong)Builder *builder;

@end

@implementation Director

- (instancetype)init {
    self = [super init];
    if (self) {
        self.builder = [[ConcreteBuilder alloc] init];
    }
    return self;
}

- (BuilderProduct *)getProductA {
    [self.builder setProduct:@"productA" withType:@"typeA"];
    return [self.builder getProduct];
}

- (BuilderProduct *)getProductB {
    [self.builder setProduct:@"productB" withType:@"typeB"];
    return [self.builder getProduct];
}

@end
