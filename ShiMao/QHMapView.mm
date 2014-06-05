//
//  MapView.m
//  ShiMao
//
//  Created by qinhao on 14-6-5.
//  Copyright (c) 2014年 qinhao. All rights reserved.
//

#import "QHMapView.h"

@implementation QHMapView

@synthesize igBeiJing;
@synthesize igDiTu;
@synthesize igJiaoTong;
@synthesize igYiYuan;
@synthesize igShangYe;
@synthesize igYuLe;
@synthesize igXueXiao;
@synthesize igJingDian;

@synthesize btnJiaoTong;
@synthesize btnYiYuan;
@synthesize btnShangYe;
@synthesize btnYuLe;
@synthesize btnXueXiao;
@synthesize btnJingDian;


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

    [igBeiJing setImage:[UIImage imageNamed:@"底图122.PNG"]];
//    [igDiTu setImage:[UIImage imageNamed:@"地图.png"]];
//    [igJiaoTong setImage:[UIImage imageNamed:@"交通.png"]];
//    [igYiYuan setImage:[UIImage imageNamed:@"医院.png"]];
//    [igShangYe setImage:[UIImage imageNamed:@"商业.png"]];
//    [igYuLe setImage:[UIImage imageNamed:@"娱乐.png"]];
//    [igXueXiao setImage:[UIImage imageNamed:@"学校.png"]];
//    [igJingDian setImage:[UIImage imageNamed:@"景点.png"]];
    
    [btnJiaoTong setBackgroundImage:[UIImage imageNamed:@"交通按钮.png"] forState:UIControlStateNormal];
    [btnYiYuan setBackgroundImage:[UIImage imageNamed:@"医院按钮.png"] forState:UIControlStateNormal];
    [btnShangYe setBackgroundImage:[UIImage imageNamed:@"商业按钮.png"] forState:UIControlStateNormal];
    [btnYuLe setBackgroundImage:[UIImage imageNamed:@"娱乐按钮.png"] forState:UIControlStateNormal];
    [btnXueXiao setBackgroundImage:[UIImage imageNamed:@"学校按钮.png"] forState:UIControlStateNormal];
    [btnJingDian setBackgroundImage:[UIImage imageNamed:@"景点按钮.png"] forState:UIControlStateNormal];
    
    btnJiaoTong.tag = 1;
    btnYiYuan.tag = 2;
    btnShangYe.tag = 3;
    btnYuLe.tag = 4;
    btnXueXiao.tag = 5;
    btnJingDian.tag = 6;
    
}

-(IBAction)methodBtn:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    int tag = btn.tag;
    if(tag == 0)
    {
        igJiaoTong.hidden = NO;
        igYiYuan.hidden = NO;
        igShangYe.hidden = NO;
        igYuLe.hidden = NO;
        igXueXiao.hidden = NO;
        igJingDian.hidden = NO;
    }
    else
    {
        tag != 1 ? igJiaoTong.hidden = YES: igJiaoTong.hidden = NO;
        tag != 2 ? igYiYuan.hidden = YES: igYiYuan.hidden = NO;
        tag != 3 ? igShangYe.hidden = YES: igShangYe.hidden = NO;
        tag != 4 ? igYuLe.hidden = YES: igYuLe.hidden = NO;
        tag != 5 ? igXueXiao.hidden = YES: igXueXiao.hidden = NO;
        tag != 6 ? igJingDian.hidden = YES: igJingDian.hidden = NO;
    }
}

- (IBAction)clickCloseBtn:(id)sender
{
    [super clickCloseBtn:nil];
    [self removeFromSuperview];
}

@end
