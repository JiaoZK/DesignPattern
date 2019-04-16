//
//  AudioPlayer.m
//  DesignPattern
//
//  Created by baidu on 17/2/15.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "AudioPlayer.h"

@implementation AudioPlayer

- (void)play:(NSString *)type file:(NSString *)fileName {
    if ([type isEqualToString:@"MP4"]) {
        NSLog(@"audioplayer play MP4");
    }else if([type isEqualToString:@"MP3"] || [type isEqualToString:@"VLC"]) {
        MediaAdapter *adapter = [[MediaAdapter alloc] init];
        [adapter setUpMediaPlayer:type];
        [adapter play:type file:fileName];
    }else {
        NSLog(@"没有匹配到！！！");
    }
}

@end
