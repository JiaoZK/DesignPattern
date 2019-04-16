//
//  AbstractMediator.h
//  DesignPattern
//
//  Created by baidu on 17/2/13.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AbstractColleague.h"

@interface AbstractMediator : NSObject

@property (nonatomic , strong) AbstractColleague *conlleageA;
@property (nonatomic , strong) AbstractColleague *conlleageB;

- (instancetype)initSetUp:(AbstractColleague *)A colleagueB:(AbstractColleague *)B;
- (void)AaffectB;
- (void)BaffectA;

@end
