//
//  ViewManager.mm
//  ShiMao
//
//  Created by heliang on 14-6-3.
//  Copyright (c) 2014年 qinhao. All rights reserved.
//

#import "ViewManager.h"
#import "AppDelegate.h"
#import "HLRootViewController.h"
#import "HLStartAnimView.h"
#import "HLMainView.h"
@implementation ViewManager

+ (HLRootViewController *)rootViewController
{
    AppDelegate *delegate = [[UIApplication  sharedApplication] delegate];
    HLRootViewController *rootViewController = (HLRootViewController *)delegate.window.rootViewController;
    return rootViewController;
}
+ (UIView *)superViewForModule
{
    return [ViewManager rootViewController].moduleParentView;
}
+ (HLStartAnimView *)goStartAnimView
{
    HLStartAnimView *view = [HLStartAnimView createHLCustomView];
    [[ViewManager superViewForModule] addSubview:view];
    return  view;
}
//进入主界面
+ (HLMainView *)goMainView
{
    HLMainView *view = [HLMainView createHLCustomView];
    [[ViewManager superViewForModule] addSubview:view];
    return view;
}
@end
