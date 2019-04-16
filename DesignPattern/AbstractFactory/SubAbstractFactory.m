//
//  SubAbstractFactory.m
//  DesignPattern
//
//  Created by baidu on 17/2/10.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "SubAbstractFactory.h"
#import "ProductA.h"
#import "ProductB.h"

@implementation SubAbstractFactory

- (IProductA *)createProductA {
    IProductA *product = [[ProductA alloc] init];
    return product;
}

- (IProductB *)createProductB {
    IProductB *product = [[ProductB alloc] init];
    return product;
}

@end
