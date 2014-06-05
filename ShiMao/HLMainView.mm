//
//  HLMainView.mm
//  ShiMao
//
//  Created by heliang on 14-6-3.
//  Copyright (c) 2014年 qinhao. All rights reserved.
//

#import "HLMainView.h"
#import "QHMapView.h"
#import "GroupIntroductionView.h"
#import "QHProjectView.h"
#import "QHGradenView.h"

@implementation HLMainView
- (void)dealloc
{
    HLReleaseOb(_btnArray);
    HLReleaseOb(_posBtnArray);
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
    self.backgroundColor = [UIColor clearColor];
    _posBtnArray = [[NSMutableArray alloc]init];
    _btnArray = [[NSMutableArray alloc]init];
    [_btnArray addObject:_groupIntroductBtn];
    [_btnArray addObject:_areaMapBtn];
    [_btnArray addObject:_projectBtn];
    [_btnArray addObject:_gradenViewBtn];
    [_btnArray addObject:_houseTypeBtn];
    [_btnArray addObject:_propagandaFilmBtn];
    [_btnArray addObject:_calculatorViewBtn];
    for (int i = 0; i < [_btnArray count]; i++)
    {
        UIButton *btn = [_btnArray objectAtIndex:i];
        CGPoint btnCenter = btn.center;
        [_posBtnArray addObject:NSStringFromCGPoint(btnCenter)];
    }
    [self showAppearView];
}
//出现动画showAppearView
- (void)showAppearView
{
    //将按钮移出屏幕
    for (int i = 0; i < [_btnArray count]; i++)
    {
        UIButton *btn = [_btnArray objectAtIndex:i];
        btn.center = CGPointMake(btn.center.x + btn.frame.size.width, btn.center.y);
    }
    
    self.alpha = 0;
    [UIView animateWithDuration:0.3 animations:^{
                        self.alpha = 1.0;
                    }
                     completion:^(BOOL isFinished)
                     {
                         //显示按钮动画
                         [self showBtnAppearAnim];
                     }];
}
- (void)showBtnAppearAnim
{
    [self showBtnAppearAnimWithOneBtn:[_btnArray objectAtIndex:0]];
}
- (void)showBtnAppearAnimWithOneBtn:(UIButton *)btn
{
    float animDuration  = 0.2;
    CGPoint finishedPos = CGPointFromString([_posBtnArray objectAtIndex:[_btnArray indexOfObject:btn]]);
    [UIView animateWithDuration:animDuration delay:0 options:UIViewAnimationOptionCurveEaseOut  animations:^{
        
                        btn.center =  CGPointMake(finishedPos.x - 10, finishedPos.y);
                    }
                     completion:^(BOOL finished)
     {
         if (finished)
         {
             
             [UIView animateWithDuration:0.1 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
                 btn.center = finishedPos;
             } completion:^(BOOL finished)
             {
                 [self oneBtnAppearFinished:btn];
             }];
         }
     }];
}
- (void)oneBtnAppearFinished:(UIButton *)finishedBtn
{
    int index = (int)[_btnArray indexOfObject:finishedBtn];
    if (index < [_btnArray count] - 1)
    {
        [self showBtnAppearAnimWithOneBtn:[_btnArray objectAtIndex:index + 1]];
    }
    else
    {
        //动画完成
    }
}
#pragma mark IBAction
//点击集团介绍按钮
- (IBAction)clickGroupIntroductBtn:(id)sender
{
    GroupIntroductionView *view = [GroupIntroductionView createHLCustomView];
    [self addSubview:view];
    [UIView animateKeyframesWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        view.center = CGPointMake(512, 384);
    } completion:^(BOOL finished) {
        
    }];
    [view setWillRemoveBlock:^{
        
    }];
}
//点击计算器按钮
- (IBAction)clickCalculatorViewBtn:(id)sender
{
    
}
//点击区域按钮
- (IBAction)clickAreaMapBtn:(id)sender
{
    QHMapView *mapview = [QHMapView createHLCustomView];
    [self addSubview:mapview];
    [UIView animateKeyframesWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        mapview.center = CGPointMake(512, 384);
    } completion:^(BOOL finished) {
        
    }];
    [mapview setWillRemoveBlock:^{

    }];
    
}
//点击园林按钮
- (IBAction)clickGradenViewBtn:(id)sender
{
    QHGradenView *gradenView = [QHGradenView createHLCustomView];
    [self addSubview:gradenView];
    [UIView animateKeyframesWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        gradenView.center = CGPointMake(512, 384);
    } completion:^(BOOL finished) {
        
    }];
    [gradenView setWillRemoveBlock:^{
        
    }];
}
//点击户型按钮
- (IBAction)clickHouseTypeViewBtn:(id)sender
{
    
}
//点击宣传片按钮图标
- (IBAction)clickPropagandaFilmBtn:(id)sender
{
    
}
//点击项目按钮
- (IBAction)clickProjectBtn:(id)sender
{
    QHProjectView *projectView = [QHProjectView createHLCustomView];
    [self addSubview:projectView];
    [UIView animateKeyframesWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        projectView.center = CGPointMake(512, 384);
    } completion:^(BOOL finished) {
        
    }];
    [projectView setWillRemoveBlock:^{
        
    }];
}
@end
