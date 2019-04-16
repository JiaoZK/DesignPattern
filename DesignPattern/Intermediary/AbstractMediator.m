//
//  AbstractMediator.m
//  DesignPattern
//
//  Created by baidu on 17/2/13.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "AbstractMediator.h"

@interface AbstractMediator () 

@end

@implementation AbstractMediator

- (instancetype)initSetUp:(AbstractColleague *)A colleagueB:(AbstractColleague *)B {
    self = [super init];
    if (self) {
        _conlleageA = A;
        _conlleageB = B;
    }
    return self;
}

@end
