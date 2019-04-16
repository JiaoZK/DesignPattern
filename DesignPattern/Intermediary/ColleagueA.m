//
//  ColleagueA.m
//  DesignPattern
//
//  Created by baidu on 17/2/13.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "ColleagueA.h"
#import "AbstractMediator.h"

@implementation ColleagueA

- (void)setTheNumber:(int)number abstractMediator:(id)mediator {
    self.number = number;
    [(AbstractMediator *)mediator AaffectB];
}

@end
