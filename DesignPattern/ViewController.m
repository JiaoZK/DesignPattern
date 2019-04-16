//
//  ViewController.m
//  DesignPattern
//
//  Created by baidu on 17/2/10.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "ViewController.h"
/***
 * 有些地方其实用协议比抽象类要好，iOS中抽象类并不像JAVA中那样，协议也可以有属性等造成协议更适合做抽象类
 * 不过这就是一个理解的问题，抽象类理解就好
 */

/*************************************
 创建类模式主要关注对象的创建过程，将对象的创建过程进行封装，使客户端可以直接得到对象，而不用去关心如何创建对象。创建类模式有5种，分别是：
 单例模式：用于得到内存中的唯一对象。
 工厂方法模式：用于创建复杂对象。
 抽象工厂模式：用于创建一组相关或相互依赖的复杂对象。
 建造者模式：用于创建模块化的更加复杂的对象。
 原型模式：用于得到一个对象的拷贝。
 为什么需要创建性模式
 首先，在编程中，对象的创建通常是一件比较复杂的事，因为，为了达到降低耦合的目的，我们通常采用面向抽象编程的方式，对象间的关系不会硬编码到类中，而是等到调用的时候再进行组装，这样虽然降低了对象间的耦合，提高了对象复用的可能，但在一定程度上将组装类的任务都交给了最终调用的客户端程序，大大增加了客户端程序的复杂度。采用创建类模式的优点之一就是将组装对象的过程封装到一个单独的类中，这样，既不会增加对象间的耦合，又可以最大限度的减小客户端的负担。
 其次，使用普通的方式创建对象，一般都是返回一个具体的对象，即所谓的面向实现编程，这与设计模式原则是相违背的。采用创建类模式则可以实现面向抽象编程。客户端要求的只是一个抽象的类型，具体返回什么样的对象，由创建者来决定。
 再次，可以对创建对象的过程进行优化，客户端关注的只是得到对象，对对象的创建过程则不关心，因此，创建者可以对创建的过程进行优化，例如在特定条件下，如果使用单例模式或者是使用原型模式，都可以优化系统的性能。
 总结
 所有的创建类模式本质上都是对对象的创建过程进行封装。
 ************************************/


@interface ViewController ()<UITableViewDelegate ,UITableViewDataSource>

@property (nonatomic , copy) NSDictionary *dataDic;
@property (nonatomic , strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataDic = @{@"单例模式":@"singlePatter",
                     @"工厂模式":@"factoryPatter",
                     @"抽象工厂模式":@"abstractFactoryPatter",
                     @"建造者模式":@"builderPatter",
                     @"原型模式":@"protoTypePatter",
                     @"模板方法模式":@"templatePatter",
                     @"中介者模式":@"intermediaryPatter",
                     @"观察者模式":@"observePatter",
                     @"访问者模式":@"visitorPatter",
                     @"命令模式":@"commandPatter",
                     @"责任链模式":@"responsileChainPatter",
                     @"策略模式":@"strategyPatter",
                     @"迭代器模式":@"iteratorPatter",
                     @"备忘录模式":@"mementoPatter",
                     @"适配器模式":@"adapterPatter",
                     @"桥接模式":@"bridgePatter",
                     @"组合模式":@"compositePatter",
                     @"装饰模式":@"decoratorPatter",
                     @"外观模式(无)":@"facadePatter",
                     @"享元模式(无)":@"flyweightPatter",
                     @"解释器模式(无)":@"expressionPatter",
                     @"代理模式(无)":@"proxyPatter"};
    
    [self.view addSubview:self.tableView];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

#pragma -mark PatterMethod
- (void)singlePatter {
    [SingleOC getInstance];
}

- (void)factoryPatter {
    BaseFactory *factory = [[Factory alloc] init];
    [[factory creactProduct] productSometing];
}

- (void)abstractFactoryPatter {
    AbstractFactory *factory = [[SubAbstractFactory alloc] init];
    IProductA *productA = [factory createProductA];
    [productA show];
    IProductB *productB = [factory createProductB];
    [productB show];
}

- (void)builderPatter {
    Director *director = [[Director alloc] init];
    [[director getProductA] show];
    [[director getProductB] show];
}

- (void)protoTypePatter {
    ProtoType *protoA = [[ProtoType alloc] init];
    protoA.name = @"ProtoType";
    protoA.type = @"type";
    NSLog(@"原始对象：%@",protoA);
    ProtoType *protoB = [protoA copy];
    NSLog(@"复制对象：%@",protoB);
}

- (void)templatePatter {
    NSArray *array = @[@12 ,@1 ,@3 ,@14 ,@6 ,@23];
    AbstractSort *sort = [[ConcreteSort alloc]init];
    [sort showSortResult:array];
}

- (void)intermediaryPatter {
    AbstractColleague *collA = [[ColleagueA alloc] init];
    AbstractColleague *collB = [[ColleagueB alloc] init];
    AbstractMediator *mediator = [[Mediator alloc] initSetUp:collA colleagueB:collB];
    [collA setTheNumber:23 abstractMediator:mediator];
    NSLog(@"A is %i and B is %i",[collA getTheNumber] , [collB getTheNumber]);
}

- (void)observePatter {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"observeNotification" object:nil];
    [self.tableView addObserver:self forKeyPath:@"contentOffset" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    if ([keyPath isEqualToString:@"contentOffset"]) {
        CGFloat offset = self.tableView.contentOffset.y;
        NSLog(@"KVO 滑动 %f", offset);
    }
}

- (void)visitorPatter {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (int i = 0; i < 10; i++) {
        int n = arc4random() % 3;
        if (n > 0) {
            ConcreteElement1 *element = [[ConcreteElement1 alloc] init];
            [array addObject:element];
        }else {
            ConcreteElement2 *element = [[ConcreteElement2 alloc] init];
            [array addObject:element];
        }
    }
    for (Element *element in array) {
//        Visitor *visitor = [[Visitor alloc] init];
        Visiter2 *visitor = [[Visiter2 alloc] init];
        [element accept:visitor];
    }
}

- (void)commandPatter {
    Receiver *receiver = [[Receiver alloc] init];
    Command *command = [[ConcreteCommand alloc] initWithReceiver:receiver];
    Invoker *invoker = [[Invoker alloc] init];
    [invoker setUpCommand:command];
    [invoker action];
}

- (void)responsileChainPatter {
    Handler *handler1 = [[ConcreteHandler1 alloc] init];
    Handler *handler2 = [[ConcreteHandler2 alloc] init];
    Handler *handler3 = [[ConcreteHandler3 alloc] init];
    [handler1 setUpNextHandler:handler2];
    [handler2 setUpNextHandler:handler3];
    Level *level = [[Level alloc] initWithLevelNum:4];
    Request *request = [[Request alloc] initWithLevel:level];
    Response *response = [handler1 handleRequest:request];
}

- (void)strategyPatter {
    Context *con = nil;
    con = [[ConcreteStrategy1 alloc] init];
    [con setUpStrategy:[[ConcreteStrategy1 alloc] init]];
    [con execute];
    con = [[ConcreteStrategy2 alloc] init];
    [con setUpStrategy:[[ConcreteStrategy2 alloc] init]];
    [con execute];
}

- (void)iteratorPatter {
    Aggregate *ag = [[ConcreteAggregate alloc] init];
    [ag add:@"jiao"];
    [ag add:@"zheng"];
    [ag add:@"kui"];
    Iterator *iter = [ag getNewIterator];
    while ([iter hasNext]) {
        NSLog(@"iterator - %@", [iter next]);
    }
}

- (void)expressionPatter {
    NSLog(@"解释器模式很不常用，没写，可搜解释器模式+计算器！");
}

- (void)mementoPatter {
    Originator *ori = [[Originator alloc] init];
    [ori setUpState:@"状态1"];
    NSLog(@"初始状态：%@", [ori getTheState]);
    Caretaker *car = [[Caretaker alloc] init];
    [car setUoMemento:[ori createMemento]];
    [ori setUpState:@"状态2"];
    NSLog(@"改变后状态:%@", [ori getTheState]);
    [ori restoreMemento:[car getTheMemento]];
    NSLog(@"恢复后状态:%@", [ori getTheState]);
}
- (void)adapterPatter {
    AudioPlayer *player = [[AudioPlayer alloc] init];
    [player play:@"MP3" file:@"mp3"];
    [player play:@"VLC" file:@"vlc"];
    [player play:@"MP4" file:@"mp4"];
    [player play:@"MP5" file:@"mp5"];
}

- (void)bridgePatter {
    RedCircle *red = [[RedCircle alloc] init];
    Shape *redShape = [[Circle alloc] initWithRadius:100 xPoint:10 yPoint:10 drawAPI:red];
    [redShape draw];
    GreenCircle *green = [[GreenCircle alloc] init];
    Shape *greenShape = [[Circle alloc] initWithRadius:200 xPoint:20 yPoint:20 drawAPI:green];
    [greenShape draw];
}

- (void)compositePatter {
    Employee *CEO = [[Employee alloc] initWithName:@"jiao" dept:@"CEO" salary:300000];
    Employee *headSales = [[Employee alloc] initWithName:@"zheng" dept:@"headSales" salary:200000];
    Employee *saleA = [[Employee alloc] initWithName:@"saleA" dept:@"sale" salary:2020000];
    Employee *saleB = [[Employee alloc] initWithName:@"saleB" dept:@"sale" salary:2010000];
    Employee *headMarket = [[Employee alloc] initWithName:@"kui" dept:@"headMarket" salary:100000];
    Employee *marketA = [[Employee alloc] initWithName:@"marketA" dept:@"market" salary:102000];
    Employee *marketB = [[Employee alloc] initWithName:@"marketB" dept:@"market" salary:101000];
    [headSales add:saleA];
    [headSales add:saleB];
    [headMarket add:marketA];
    [headMarket add:marketB];
    [CEO add:headSales];
    [CEO add:headMarket];
    NSLog(@"%@",[CEO getLogString]);
    for (Employee *employee in [CEO getSubordinates]) {
        NSLog(@"%@",[employee getLogString]);
        for (Employee *temp in [employee getSubordinates]) {
            NSLog(@"%@",[temp getLogString]);
        }
    }
}

- (void)decoratorPatter {
    Shaper *circle = [[Circler alloc] init];
    Shaper *redCircle = [[RedShapeDecorator alloc] initWithShaper:[[Circler alloc] init]];
    Shaper *redRectangle = [[RedShapeDecorator alloc] initWithShaper:[[Rectangler alloc] init]];
    [circle draw];
    [redCircle draw];
    [redRectangle draw];
}

- (void)facadePatter {
    /***********************************************
     主要解决：降低访问复杂系统的内部子系统时的复杂度，简化客户端与之的接口。
     何时使用： 1、客户端不需要知道系统内部的复杂联系，整个系统只需提供一个"接待员"即可。 2、定义系统的入口。
     关键代码：在客户端和复杂系统之间再加一层，这一层将调用顺序、依赖关系等处理好。
     使用场景： 1、为复杂的模块或子系统提供外界访问的模块。 2、子系统相对独立。 3、预防低水平人员带来的风险。
     注意事项：在层次化结构中，可以使用外观模式定义系统中每一层的入口。
     **********************************************/
}

- (void)flyweightPatter {
    /**********************************************
     // tableview 的 cell 重用
     主要解决：在有大量对象时，有可能会造成内存溢出，我们把其中共同的部分抽象出来，如果有相同的业务请求，直接返回在内存中已有的对象，避免重新创建。
     缺点：提高了系统的复杂度，需要分离出外部状态和内部状态，而且外部状态具有固有化的性质，不应该随着内部状态的变化而变化，否则会造成系统的混乱。
     使用场景： 1、系统有大量相似对象。 2、需要缓冲池的场景。
     注意事项： 1、注意划分外部状态和内部状态，否则可能会引起线程安全问题。 2、这些类必须有一个工厂对象加以控制。
     OC中如果能用set可定是最好的，但是set不支持取一个数据，所以要考虑array了
     *********************************************/
}

- (void)proxyPatter {
    /*********************************************
     delegate block
     优点： 1、职责清晰。 2、高扩展性。 3、智能化。
     缺点： 1、由于在客户端和真实主题之间增加了代理对象，因此有些类型的代理模式可能会造成请求的处理速度变慢。 2、实现代理模式需要额外的工作，有些代理模式的实现非常复杂。
     注意事项： 1、和适配器模式的区别：适配器模式主要改变所考虑对象的接口，而代理模式不能改变所代理类的接口。 2、和装饰器模式的区别：装饰器模式为了增强功能，而代理模式是为了加以控制。
     ********************************************/
}

#pragma -mark tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataDic.allKeys.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"tableViewCellId";
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.tintColor = [UIColor blackColor];
    cell.textLabel.text = self.dataDic.allKeys[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *key = self.dataDic.allKeys[indexPath.row];
    NSString *value = self.dataDic[key];
    if (value) {
        [self performSelector:NSSelectorFromString(value) withObject:nil afterDelay:0];
    }
}

- (void)dealloc {
    self.tableView.delegate = nil;
    self.tableView.dataSource = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.backgroundColor = [UIColor whiteColor];
        _tableView.frame = CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height - 64);
    }
    return _tableView;
}

@end
