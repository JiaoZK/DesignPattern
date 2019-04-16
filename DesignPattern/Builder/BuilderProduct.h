//
//  BuilderProduct.h
//  DesignPattern
//
//  Created by baidu on 17/2/10.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BuilderProduct : NSObject

@property (nonatomic , copy) NSString *name;

@property (nonatomic , copy) NSString *type;

- (void)show;

@end
