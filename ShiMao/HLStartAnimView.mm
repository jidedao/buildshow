//
//  HLStartAnimView.mm
//  ShiMao
//
//  Created by heliang on 14-6-3.
//  Copyright (c) 2014年 qinhao. All rights reserved.
//

#import "HLStartAnimView.h"
@implementation HLStartAnimView
- (void)dealloc
{
    HLReleaseOb(_player);
    [super dealloc];
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/
- (void)initView
{
    [super initView];
    NSString *videoPath = [HLPublicUtilTool pathWithFileName:kFileName_StartAnimVideo];
    NSURL *url =   [[NSURL alloc]initFileURLWithPath:videoPath];
    _player = [[MPMoviePlayerController alloc]initWithContentURL:url];
    [url release];
    [_player prepareToPlay];
    [self addSubview:_player.view];
    [_player.view setFrame: _player.view.superview.bounds];
    _player.controlStyle = MPMovieControlStyleNone;
    [_player play];
//    [player release];
}
- (void)registerNotification
{
    [super registerNotification];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(callbackWhenMPPlayFinished:) name:MPMoviePlayerPlaybackDidFinishNotification object:nil];
}

#pragma mark Notification Method
- (void)callbackWhenMPPlayFinished:(NSNotification *)notification
{
    //play finished
    [self removeFromSuperview];
    [ViewManager goMainView];
}
@end
