//
//  ConcreteBuilder.m
//  DesignPattern
//
//  Created by baidu on 17/2/10.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "ConcreteBuilder.h"
#import "BuilderProduct.h"

@interface ConcreteBuilder ()

@property (nonatomic , strong)BuilderProduct *product;

@end

@implementation ConcreteBuilder

- (instancetype)init {
    self = [super init];
    if (self) {
        self.product = [[BuilderProduct alloc] init];
    }
    return self;
}

- (void)setProduct:(NSString *)name withType:(NSString *)type {
    self.product.name = name;
    self.product.type = type;
}

- (BuilderProduct *)getProduct {
    return self.product;
}

@end
