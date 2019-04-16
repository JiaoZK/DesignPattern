//
//  Handler.h
//  DesignPattern
//
//  Created by baidu on 17/2/14.
//  Copyright © 2017年 baidu. All rights reserved.
//

/********************************************
 抽象处理类中主要包含一个指向下一处理类的成员变量nextHandler和一个处理请求的方法handRequest，handRequest方法的主要主要思想是，如果满足处理的条件，则有本处理类来进行处理，否则由nextHandler来处理
 
 责任链模式的优缺点
 责任链模式与if…else…相比，他的耦合性要低一些，因为它把条件判定都分散到了各个处理类中，并且这些处理类的优先处理顺序可以随意设定。责任链模式也有缺点，这与if…else…语句的缺点是一样的，那就是在找到正确的处理类之前，所有的判定条件都要被执行一遍，当责任链比较长时，性能问题比较严重。
 
 责任链模式的适用场景
 就像开始的例子那样，假如使用if…else…语句来组织一个责任链时感到力不从心，代码看上去很糟糕时，就可以使用责任链模式来进行重构。
 
 总结
 责任链模式其实就是一个灵活版的if…else…语句，它就是将这些判定条件的语句放到了各个处理类中，这样做的优点是比较灵活了，但同样也带来了风险，比如设置处理类前后关系时，一定要特别仔细，搞对处理类前后逻辑的条件判断关系，并且注意不要在链中出现循环引用的问题。
 *******************************************/

#import <Foundation/Foundation.h>
#import "Response.h"
#import "Request.h"
#import "Level.h"

@interface Handler : NSObject

- (Level *)getHandlerLevel;
- (Response *)response:(Request *)request;

- (Response *)handleRequest:(Request *)request;
- (void)setUpNextHandler:(Handler *)handler;

@end
