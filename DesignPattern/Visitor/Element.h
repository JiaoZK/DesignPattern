//
//  Element.h
//  DesignPattern
//
//  Created by baidu on 17/2/13.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "IVisitor.h"

@interface Element : NSObject

- (void)accept:(IVisitor *)visitor;
- (void)doSomeThing;
- (void)doSomeThing2;

@end
