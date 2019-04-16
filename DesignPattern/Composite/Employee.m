//
//  Employee.m
//  DesignPattern
//
//  Created by baidu on 17/2/17.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "Employee.h"

@interface Employee ()

@property (nonatomic , copy) NSString *name;
@property (nonatomic , copy) NSString *dept;
@property (nonatomic , assign) NSUInteger salary;
@property (nonatomic , strong) NSMutableArray *subordinates;

@end

@implementation Employee

- (instancetype)initWithName:(NSString *)name dept:(NSString *)dept salary:(NSInteger)salary {
    self = [super init];
    if (self) {
        self.name = name;
        self.dept = dept;
        self.salary = salary;
        self.subordinates = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)add:(Employee *)employee {
    [self.subordinates addObject:employee];
}

- (void)remove:(Employee *)employee {
    [self.subordinates removeObject:employee];
}

- (NSArray *)getSubordinates {
    return [self.subordinates copy];
}

- (NSString *)getLogString {
    NSString *resultStr = [NSString stringWithFormat:@"Employee name:%@, dept:%@ ,salary:%lu",self.name , self.dept ,(unsigned long)self.salary];
    return resultStr;
}

@end
