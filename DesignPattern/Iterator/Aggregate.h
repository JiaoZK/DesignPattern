//
//  Aggregate.h
//  DesignPattern
//
//  Created by baidu on 17/2/15.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"

@interface Aggregate : NSObject

- (void)add:(id)object;
- (void)remove:(id)object;
- (Iterator *)getNewIterator;

@end
