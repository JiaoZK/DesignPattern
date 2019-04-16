//
//  Level.m
//  DesignPattern
//
//  Created by baidu on 17/2/14.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "Level.h"

@interface Level ()

@property (nonatomic , assign) int levelNum;

@end

@implementation Level

- (instancetype)initWithLevelNum:(int)levelNum {
    self = [super init];
    if (self) {
        self.levelNum = levelNum;
    }
    return self;
}

- (BOOL)above:(Level *)level {
    if (self.levelNum >= level.levelNum) {
        return YES;
    }else {
        return NO;
    }
}

@end
