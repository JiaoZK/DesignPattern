//
//  Visiter2.m
//  DesignPattern
//
//  Created by baidu on 17/2/14.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "Visiter2.h"
#import "Element.h"

@implementation Visiter2

- (void)visit:(id)element {
    [(Element *)element doSomeThing2];
}

@end
