//
//  Builder.h
//  DesignPattern
//
//  Created by baidu on 17/2/10.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BuilderProduct.h"

@interface Builder : NSObject

- (void)setProduct:(NSString *)name withType:(NSString *)type;
- (BuilderProduct *)getProduct;

@end
