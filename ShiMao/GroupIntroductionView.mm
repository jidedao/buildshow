//
//  GroupIntroductionView.m
//  ShiMao
//
//  Created by heliang on 14-6-4.
//  Copyright (c) 2014年 qinhao. All rights reserved.
//

#import "GroupIntroductionView.h"

@implementation GroupIntroductionView

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
}
#pragma mark - IBAction
- (IBAction)clickCloseBtn:(id)sender
{
    [super clickCloseBtn:nil];
    [self removeFromSuperview];
}
- (IBAction)clickGroupIntroductionBtn:(id)sender
{
    self.detailTextView.text = @"集团介绍的内容";
}
//点击荣誉按钮
- (IBAction)clickHonorIntroductionBtn:(id)sender
{
    self.detailTextView.text = @"2013年 “亚洲管理最佳公司”前十名\n2011年中国房地产上市公司综合实力十强\n2010年中国房地产行业年度30强\n2010年再获中国蓝筹地产\n2010年胡润企业社会责任奖\n2009年三获全国百家明星侨资企业\n2009年中国房地产开发企业百强\n2008年中国房地产开发企业十强\n2008年中国外资房地产企业内地综合实力TOP10首位\n2007年中国最受尊敬企业大奖\n 2007年中国外资房地产企业内地综合实力TOP10首位\n2007年亚洲50佳企业\n2006年亚洲十大最具影响力品牌奖\n2006年再获全国百家明星侨资企业\n2005年令人尊敬的上海房地产企业\n2004年中国超级品牌－荣誉奖、行业特别奖\n2004年中国城市运营商50强\n2004年精瑞住宅科学技术奖\n2004年中国蓝筹地产\n2004年中国房地产品牌战略创新十强\n2003年全国百家明星侨资企业\n2002年上海房地产十大知名房地产企业\n2002年上海房地产关注品牌";
}
//项目介绍
- (IBAction)clickProjectIntroductionBtn:(id)sender
{
    self.detailTextView.text = @"这是项目介绍";
}
//业务介绍
- (IBAction)clickBusinessIntroductionBtn:(id)sender
{
    self.detailTextView.text = @"这是业务介绍";
}
//链接按钮
- (IBAction)clickLinkIntroductionBtn:(id)sender
{
    self.detailTextView.text = @"这是快速链接";
}
@end
