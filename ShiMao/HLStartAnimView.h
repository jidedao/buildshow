//
//  HLStartAnimView.h
//  ShiMao
//
//  Created by heliang on 14-6-3.
//  Copyright (c) 2014年 qinhao. All rights reserved.
//
/**
 application start animation view
 */
#import <UIKit/UIKit.h>
#import  <MediaPlayer/MediaPlayer.h>
#import "HLCustomOriginView.h"
@interface HLStartAnimView : HLCustomOriginView
{
    MPMoviePlayerController *_player;
}
@end
