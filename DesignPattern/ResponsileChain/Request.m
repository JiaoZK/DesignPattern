//
//  Request.m
//  DesignPattern
//
//  Created by baidu on 17/2/14.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "Request.h"

@interface Request ()

@property (nonatomic , strong)Level *level;

@end

@implementation Request

- (instancetype)initWithLevel:(Level *)level {
    self = [super init];
    if (self) {
        self.level = level;
    }
    return self;
}

- (Level *)getLevel {
    return self.level;
}

@end
