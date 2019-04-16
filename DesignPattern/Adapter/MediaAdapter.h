//
//  MediaAdapter.h
//  DesignPattern
//
//  Created by baidu on 17/2/15.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "MediaPlayer.h"
#import "AdvancedMediaPlayer.h"
#import "VlcPlayer.h"
#import "MP3Player.h"

@interface MediaAdapter : MediaPlayer

@property (nonatomic , strong)AdvancedMediaPlayer *player;

- (void)setUpMediaPlayer:(NSString *)type;

@end
