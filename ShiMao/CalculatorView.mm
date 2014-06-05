//
//  CalculatorView.mm
//  ShiMao
//
//  Created by heliang on 14-6-5.
//  Copyright (c) 2014年 qinhao. All rights reserved.
//

#import "CalculatorView.h"

@implementation CalculatorView

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
    self.bgImageView.image = [UIImage customImageNamed:@"计算器_底图.png"];
}
- (IBAction)clickCloseBtn:(id)sender
{
    [super clickCloseBtn:sender];
    [self removeFromSuperview];
}
//计算按钮
- (IBAction)clickCalculateBtn:(id)sender
{
    
}
//充填按钮
- (IBAction)clickReFillBtn:(id)sender
{
    
}
@end
