//
//  ViewManager.h
//  ShiMao
//
//  Created by heliang on 14-6-3.
//  Copyright (c) 2014年 qinhao. All rights reserved.
//

#import <Foundation/Foundation.h>
@class HLStartAnimView;
@class HLMainView;
@class HLRootViewController;
@interface ViewManager : NSObject
//得到根控制器
+ (HLRootViewController *)rootViewController;
+ (UIView *)superViewForModule;

//进入启动动画界面
+ (HLStartAnimView *)goStartAnimView;
//进入主界面
+ (HLMainView *)goMainView;
@end
