//
//  ConcreteSort.m
//  DesignPattern
//
//  Created by baidu on 17/2/13.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "ConcreteSort.h"

@implementation ConcreteSort

- (NSArray *)sortArray:(NSArray *)originArray {
    NSMutableArray *array = [originArray mutableCopy];
    for (int i = 0; i < array.count; i++) {
        for (int n = i+1; n < array.count; n++) {
            if ([array[n] intValue] < [array[i] intValue]) {
                [array exchangeObjectAtIndex:n withObjectAtIndex:i];
            }
        }
    }
    return [array copy];
}

@end
