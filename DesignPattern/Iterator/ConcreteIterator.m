//
//  ConcreteIterator.m
//  DesignPattern
//
//  Created by baidu on 17/2/15.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "ConcreteIterator.h"

@interface ConcreteIterator ()

@property (nonatomic , strong)NSArray *array;
@property (nonatomic , assign)int indexPath;

@end

@implementation ConcreteIterator

- (instancetype)initWithArray:(NSArray *)array {
    self = [super init];
    if (self) {
        self.array = array;
        self.indexPath = 0;
    }
    return self;
}

- (BOOL)hasNext {
    if (self.indexPath != [self.array count]) {
        return YES;
    }
    else {
        return NO;
    }
}

- (id)next {
    id object = nil;
    if ([self hasNext]) {
        object = self.array[self.indexPath];
        self.indexPath++;
    }
    return object;
}

@end
