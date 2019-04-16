//
//  Factory.m
//  DesignPattern
//
//  Created by baidu on 17/2/10.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "Factory.h"
#import "Product.h"

@implementation Factory

- (BaseProduct *)creactProduct {
    Product *product = [[Product alloc] init];
    return product;
}

@end
