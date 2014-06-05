//
//  HLMainView.h
//  ShiMao
//
//  Created by heliang on 14-6-3.
//  Copyright (c) 2014年 qinhao. All rights reserved.
//

#import "HLCustomOriginView.h"

@interface HLMainView : HLCustomOriginView
{
    NSMutableArray *_btnArray;
    NSMutableArray *_posBtnArray;
}
@property (nonatomic,assign)IBOutlet UIButton *groupIntroductBtn;//集团介绍按钮
@property (nonatomic,assign)IBOutlet UIButton *projectBtn;//项目按钮
@property (nonatomic,assign)IBOutlet UIButton  *areaMapBtn;//区域按钮
@property (nonatomic,assign)IBOutlet UIButton  *houseTypeBtn;//户型按钮
@property (nonatomic,assign)IBOutlet UIButton   *propagandaFilmBtn;//宣传片按钮
@property (nonatomic,assign)IBOutlet UIButton   *gradenViewBtn;//园林按钮
@property (nonatomic,assign)IBOutlet UIButton   *calculatorViewBtn;//计算器按钮

- (IBAction)clickGroupIntroductBtn:(id)sender;//点击集团介绍按钮
//点击计算器按钮
- (IBAction)clickCalculatorViewBtn:(id)sender;
//点击区域按钮
- (IBAction)clickAreaMapBtn:(id)sender;
//点击园林按钮
- (IBAction)clickGradenViewBtn:(id)sender;
//点击户型按钮
- (IBAction)clickHouseTypeViewBtn:(id)sender;
//点击宣传片按钮图标
- (IBAction)clickPropagandaFilmBtn:(id)sender;
//点击项目按钮
- (IBAction)clickProjectBtn:(id)sender;
@end
