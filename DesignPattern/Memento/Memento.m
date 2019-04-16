//
//  Memento.m
//  DesignPattern
//
//  Created by baidu on 17/2/15.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "Memento.h"

@interface Memento ()

@property (nonatomic , copy) NSString *state;

@end

@implementation Memento

- (instancetype)initWithState:(NSString *)state {
    self = [super init];
    if (self) {
        self.state = state;
    }
    return self;
}

- (NSString *)getTheState {
    return self.state;
}

- (void)setUpState:(NSString *)state {
    self.state = state;
}

@end
