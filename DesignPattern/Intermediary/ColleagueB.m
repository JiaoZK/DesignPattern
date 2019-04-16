//
//  ColleagueB.m
//  DesignPattern
//
//  Created by baidu on 17/2/13.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "ColleagueB.h"
#import "AbstractMediator.h"

@implementation ColleagueB

- (void)setTheNumber:(int)number abstractMediator:(id)mediator {
    self.number = number;
    [(AbstractMediator *)mediator BaffectA];
}

@end
