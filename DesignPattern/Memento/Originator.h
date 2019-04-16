//
//  Originator.h
//  DesignPattern
//
//  Created by baidu on 17/2/15.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Memento.h"

@interface Originator : NSObject

- (NSString *)getTheState;
- (void)setUpState:(NSString *)state;
- (Memento *)createMemento;
- (void)restoreMemento:(Memento *)memen;

@end
