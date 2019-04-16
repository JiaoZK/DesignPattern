//
//  Originator.m
//  DesignPattern
//
//  Created by baidu on 17/2/15.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "Originator.h"

@interface Originator ()

@property (nonatomic , copy) NSString *state;

@end

@implementation Originator

- (instancetype)init {
    self = [super init];
    if (self) {
        self.state = @"";
    }
    return self;
}

- (NSString *)getTheState {
    return self.state;
}

- (void)setUpState:(NSString *)state {
    self.state = state;
}

- (Memento *)createMemento {
    return [[Memento alloc] initWithState:self.state];
}
- (void)restoreMemento:(Memento *)memen {
    [self setUpState:[memen getTheState]];
}

@end
