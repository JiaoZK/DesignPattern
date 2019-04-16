//
//  AdvancedMediaPlayer.h
//  DesignPattern
//
//  Created by baidu on 17/2/15.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdvancedMediaPlayer : NSObject

- (void)playMP3:(NSString *)fileName;
- (void)playVLC:(NSString *)fileName;

@end
