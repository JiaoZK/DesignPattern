//
//  Caretaker.h
//  DesignPattern
//
//  Created by baidu on 17/2/15.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Memento.h"

@interface Caretaker : NSObject

- (Memento *)getTheMemento;
- (void)setUoMemento:(Memento *)memento;

@end
