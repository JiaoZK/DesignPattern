//
//  MediaPlayer.h
//  DesignPattern
//
//  Created by baidu on 17/2/15.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MediaPlayer : NSObject

- (void)play:(NSString *)type file:(NSString *)fileName;

@end
