//
//  ConcreteAggregate.m
//  DesignPattern
//
//  Created by baidu on 17/2/15.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "ConcreteAggregate.h"
#import "ConcreteIterator.h"

@interface ConcreteAggregate ()

@property (nonatomic , strong)NSMutableArray *mutableArray;

@end

@implementation ConcreteAggregate

- (instancetype)init {
    self = [super init];
    if (self) {
        self.mutableArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)add:(id)object {
    [self.mutableArray addObject:object];
}

- (void)remove:(id)object {
    [self.mutableArray removeObject:object];
}

- (Iterator *)getNewIterator {
    return [[ConcreteIterator alloc] initWithArray:self.mutableArray];
}

@end
