//
//  HLRootViewController.mm
//  ShiMao
//
//  Created by heliang on 14-6-3.
//  Copyright (c) 2014年 qinhao. All rights reserved.
//

#import "HLRootViewController.h"
#import "HLStartAnimView.h"
@interface HLRootViewController ()

@end

@implementation HLRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //创建模块父视图
//    CGSize size = WINSIZE;
    self.view.backgroundColor = [UIColor clearColor];
    UIView *view = [[UIView  alloc]initWithFrame:CGRectMake(0, 0, 1024  ,768)];
    view.backgroundColor = [UIColor clearColor];
    [self.view addSubview:view];
    self.moduleParentView = view;
    [view release];
    [ViewManager goStartAnimView];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
#pragma mark orientation method
// Override to allow orientations other than the default portrait orientation.

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations.
    // return UIInterfaceOrientationIsLandscape(interfaceOrientation);
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}
- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscapeLeft|UIInterfaceOrientationMaskLandscapeRight;
}

@end
