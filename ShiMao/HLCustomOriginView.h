//
//  HLCustomOriginView.h
//  ShiMao
//
//  Created by heliang on 14-6-3.
//  Copyright (c) 2014年 qinhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HLCustomOriginView : UIView
{
    void (^appearAnimFinishedBlock)();
    void (^willRemoveBlock)();
    void (^clickCloseBlock)();
}

- (void)setAppearAnimFinishedBlock:(void(^)())appearAnimFinishedBlock;
- (void)setClickCloseBlock:(void(^)())clickCloseBlock_;
- (void)setWillRemoveBlock:(void(^)())_willRemoveBlock;


+ (id)createHLCustomView;
+ (id)createViewWithNibName:(NSString *)nibName;
- (void)initView;
- (void)registerNotification;
- (IBAction)clickCloseBtn:(id)sender;
@end
