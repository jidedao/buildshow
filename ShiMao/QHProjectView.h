//
//  ProjectView.h
//  ShiMao
//
//  Created by qinhao on 14-6-5.
//  Copyright (c) 2014年 qinhao. All rights reserved.
//

#import "HLCustomOriginView.h"

@interface QHProjectView : HLCustomOriginView
@property (nonatomic,assign) IBOutlet UIImageView   *igBg;
@property (nonatomic,assign) IBOutlet UIButton      *btnBieShu;
@property (nonatomic,assign) IBOutlet UIButton      *btnShangYe;
@property (nonatomic,assign) IBOutlet UIButton      *btnYangFang;
@property (nonatomic,assign) IBOutlet UIButton      *btnGaoCeng;

-(IBAction)methodBtn:(id)sender;

@end
