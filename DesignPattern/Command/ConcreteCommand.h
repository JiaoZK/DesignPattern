//
//  ConcreteCommand.h
//  DesignPattern
//
//  Created by baidu on 17/2/14.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "Command.h"
#import "Receiver.h"

@interface ConcreteCommand : Command

- (instancetype)initWithReceiver:(Receiver *)receiver;

@end
