//
//  QHGradenView.m
//  ShiMao
//
//  Created by qinhao on 14-6-5.
//  Copyright (c) 2014年 qinhao. All rights reserved.
//

#import "QHGradenView.h"

@implementation QHGradenView

@synthesize scrollView;

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

    int itemN = 9;
    [scrollView setContentSize:CGSizeMake(WINSIZE_W*itemN, WINSIZE_H)];
    [scrollView setPagingEnabled:YES];
    for(int i=1; i<itemN; i++)
    {
        [self addItemView:i];
    }
}

-(void)addItemView:(int)n
{
    NSString *str = [NSString stringWithFormat:@"园林%d.PNG",n];
    UIImageView *igView = [[[UIImageView alloc] initWithFrame:CGRectMake((n-1)*WINSIZE_W, 0, WINSIZE_W, WINSIZE_H)] autorelease];
    [igView setImage:[UIImage imageNamed:str]];
    [scrollView addSubview:igView];
}

- (IBAction)clickCloseBtn:(id)sender
{
    [super clickCloseBtn:nil];
    [self removeFromSuperview];
}

@end
