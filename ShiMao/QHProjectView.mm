//
//  ProjectView.m
//  ShiMao
//
//  Created by qinhao on 14-6-5.
//  Copyright (c) 2014年 qinhao. All rights reserved.
//

#import "QHProjectView.h"

@implementation QHProjectView
@synthesize igBg;
@synthesize btnBieShu;
@synthesize btnShangYe;
@synthesize btnYangFang;
@synthesize btnGaoCeng;


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

-(void)initView
{
    [super initView];
    [igBg setImage:[UIImage imageNamed:@"底图123.png"]];
    btnBieShu.tag = 1;
    btnShangYe.tag = 2;
    btnYangFang.tag = 3;
    btnGaoCeng.tag = 4;
}

-(IBAction)methodBtn:(id)sender
{
    
}

- (IBAction)clickCloseBtn:(id)sender
{
    [super clickCloseBtn:nil];
    [self removeFromSuperview];
}

@end
