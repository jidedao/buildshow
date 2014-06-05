//
//  HLCustomOriginView.mm
//  ShiMao
//
//  Created by heliang on 14-6-3.
//  Copyright (c) 2014年 qinhao. All rights reserved.
//

#import "HLCustomOriginView.h"

@implementation HLCustomOriginView
+ (id)createHLCustomView
{
    NSString *nibName =  NSStringFromClass([self class]);
    id view =  [self  createViewWithNibName:nibName];
    [view initView];
    return view;
    
}
+ (id)createViewWithNibName:(NSString *)nibName
{
    id ob = nil;
    NSArray *array = [[NSBundle mainBundle] loadNibNamed:nibName owner:nil options:nil];
    for (id obj in array)
    {
        if ([obj isKindOfClass:[NSClassFromString(nibName) class]])
        {
            ob = obj;
            break;
        }
    }
    return ob;
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
    [self registerNotification];
}
- (void)registerNotification
{
    
}
//设置appearAnim完成时回调Block
- (void)setAppearAnimFinishedBlock:(void(^)())_appearAnimFinishedBlock
{
    if (appearAnimFinishedBlock)
    {
        Block_release(appearAnimFinishedBlock);
    }
    appearAnimFinishedBlock = Block_copy(_appearAnimFinishedBlock);
}
- (void)setWillRemoveBlock:(void(^)())_willRemoveBlock
{
    if (willRemoveBlock)
    {
        Block_release(willRemoveBlock);
        willRemoveBlock = nil;
    }
    willRemoveBlock = Block_copy(_willRemoveBlock);
}
- (void)setClickCloseBlock:(void(^)())clickCloseBlock_
{
    if (clickCloseBlock)
    {
        Block_release(clickCloseBlock);
    }
    clickCloseBlock = Block_copy(clickCloseBlock_);
}
- (void)removeFromSuperview
{
    //    [self.layer removeAllAnimations];
    HLReleaseBlock(appearAnimFinishedBlock);
    HLReleaseBlock(clickCloseBlock);
    if (willRemoveBlock)
    {
        willRemoveBlock();
        HLReleaseBlock(willRemoveBlock);
    }
    [self.layer removeAllAnimations];
    [super removeFromSuperview];
}

- (IBAction)clickCloseBtn:(id)sender
{
    if (clickCloseBlock)
    {
        clickCloseBlock();
    }
}
@end
