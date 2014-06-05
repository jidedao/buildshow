//
//  MapView.h
//  ShiMao
//
//  Created by qinhao on 14-6-5.
//  Copyright (c) 2014年 qinhao. All rights reserved.
//

#import "HLCustomOriginView.h"

@interface QHMapView : HLCustomOriginView
@property (nonatomic,assign) IBOutlet UIImageView  *igBeiJing;

@property (nonatomic,assign) IBOutlet UIImageView  *igDiTu;
@property (nonatomic,assign) IBOutlet UIImageView  *igJiaoTong;
@property (nonatomic,assign) IBOutlet UIImageView  *igYiYuan;
@property (nonatomic,assign) IBOutlet UIImageView  *igShangYe;
@property (nonatomic,assign) IBOutlet UIImageView  *igYuLe;
@property (nonatomic,assign) IBOutlet UIImageView  *igXueXiao;
@property (nonatomic,assign) IBOutlet UIImageView  *igJingDian;

@property (nonatomic,assign) IBOutlet UIButton  *btnJiaoTong;
@property (nonatomic,assign) IBOutlet UIButton  *btnYiYuan;
@property (nonatomic,assign) IBOutlet UIButton  *btnShangYe;
@property (nonatomic,assign) IBOutlet UIButton  *btnYuLe;
@property (nonatomic,assign) IBOutlet UIButton  *btnXueXiao;
@property (nonatomic,assign) IBOutlet UIButton  *btnJingDian;

-(IBAction)methodBtn:(id)sender;

@end
