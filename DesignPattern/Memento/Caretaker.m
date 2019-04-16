//
//  Caretaker.m
//  DesignPattern
//
//  Created by baidu on 17/2/15.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "Caretaker.h"

@interface Caretaker ()

@property (nonatomic , strong) Memento *memento;

@end

@implementation Caretaker

- (Memento *)getTheMemento {
    return self.memento;
}

- (void)setUoMemento:(Memento *)memento {
    self.memento = memento;
}

@end
