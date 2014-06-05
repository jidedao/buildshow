//
//  GroupIntroductionView.h
//  ShiMao
//
//  Created by heliang on 14-6-4.
//  Copyright (c) 2014年 qinhao. All rights reserved.
//

#import "HLCustomOriginView.h"

@interface GroupIntroductionView : HLCustomOriginView
{

}
@property (nonatomic,assign)IBOutlet UIButton       *groupIntroductionBtn;
@property (nonatomic,assign)IBOutlet UIButton       *honorIntroductionBtn;
@property (nonatomic,assign)IBOutlet UIButton       *projectIntroductionBtn;
@property (nonatomic,assign)IBOutlet UIButton       *businessIntroductionBtn;
@property (nonatomic,assign)IBOutlet UIButton       *linkIntroductionBtn;

@property (nonatomic,assign)IBOutlet UITextView         *detailTextView;
//点击集团介绍按钮
- (IBAction)clickGroupIntroductionBtn:(id)sender;
//点击荣誉按钮
- (IBAction)clickHonorIntroductionBtn:(id)sender;
//项目介绍
- (IBAction)clickProjectIntroductionBtn:(id)sender;
//业务介绍
- (IBAction)clickBusinessIntroductionBtn:(id)sender;
//链接按钮
- (IBAction)clickLinkIntroductionBtn:(id)sender;
@end
