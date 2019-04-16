//
//  AbstractSort.m
//  DesignPattern
//
//  Created by baidu on 17/2/13.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "AbstractSort.h"

@implementation AbstractSort

- (void)showSortResult:(NSArray *)array {
    NSArray *resultArray = [self sortArray:array];
    for (int i = 0; i < resultArray.count; i++) {
        NSLog(@"顺序是 %@", resultArray[i]);
    }
}

- (NSArray *)sortArray:(NSArray *)originArray {
    return nil;
}

@end
