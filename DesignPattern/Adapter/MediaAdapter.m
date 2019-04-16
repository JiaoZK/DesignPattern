//
//  MediaAdapter.m
//  DesignPattern
//
//  Created by baidu on 17/2/15.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "MediaAdapter.h"

@implementation MediaAdapter

- (void)setUpMediaPlayer:(NSString *)type {
    if ([type isEqualToString:@"MP3"]) {
        self.player = [[MP3Player alloc] init];
    }else if ([type isEqualToString:@"VLC"]) {
        self.player = [[VlcPlayer alloc] init];
    }
}

- (void)play:(NSString *)type file:(NSString *)fileName {
    AdvancedMediaPlayer *player = self.player;
    if ([type isEqualToString:@"MP3"]) {
        [(MP3Player *)player playMP3:fileName];
    }else if ([type isEqualToString:@"VLC"]) {
        [(VlcPlayer *)player playVLC:fileName];
    }
}

@end
