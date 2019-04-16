//
//  SingleOC.m
//  DesignPattern
//
//  Created by baidu on 17/2/10.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "SingleOC.h"

static SingleOC *shareInstance = nil;
@implementation SingleOC

+ (SingleOC *)getInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[SingleOC alloc] init];
    });
    return shareInstance;
}

@end
