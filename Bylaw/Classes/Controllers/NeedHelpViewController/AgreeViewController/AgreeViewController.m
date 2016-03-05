//
//  AgreeViewController.m
//  Bylaw
//
//  Created by 小热狗 on 16/3/4.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#import "AgreeViewController.h"
#import "FindLawerViewController.h"
@interface AgreeViewController ()

@end

@implementation AgreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UILabel *nextStepLabel=[UILabel new];
    nextStepLabel.backgroundColor=CLEARCOLOR;
    nextStepLabel.font=Big_Title_Font;
    nextStepLabel.text=@"下一步";
    nextStepLabel.textAlignment=NSTextAlignmentCenter;
    nextStepLabel.textColor=BLACKCOLOR;
    [self.view addSubview:nextStepLabel];
    
    
    UILabel *lawerInfo=[UILabel new];
    lawerInfo.backgroundColor=CLEARCOLOR;
    lawerInfo.font=Text_Font;
    lawerInfo.text=@"同意唐律师代理吗?";
    lawerInfo.textAlignment=NSTextAlignmentCenter;
    lawerInfo.textColor=DARKGRYCOLOR;
    [self.view addSubview:lawerInfo];
 
    
    
    UIButton *refuseBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [refuseBtn setTitle:@"拒绝" forState:UIControlStateNormal];
    refuseBtn.backgroundColor=[UIColor whiteColor];
    refuseBtn.titleLabel.font=Text_Font;
    [refuseBtn setTitleColor:DARKGRYCOLOR forState:UIControlStateNormal];
    refuseBtn.layer.borderWidth = 1;
    refuseBtn.layer.borderColor = YellowColor.CGColor;
    [self.view addSubview:refuseBtn];
    
    
    
    UIButton *agreeBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [agreeBtn setTitle:@"同意" forState:UIControlStateNormal];
    agreeBtn.backgroundColor=YellowColor;
    agreeBtn.titleLabel.font=Text_Font;
    [agreeBtn addTarget:self action:@selector(contactLawer) forControlEvents:UIControlEventTouchUpInside];
    [agreeBtn setTitleColor:DARKGRYCOLOR forState:UIControlStateNormal];
    [self.view addSubview:agreeBtn];
    
    
    
    
    nextStepLabel.sd_layout
    .topSpaceToView(self.view,NavigationBar_HEIGHT+50)
    .centerXEqualToView(self.view)
    .widthIs(200);
    
    lawerInfo.sd_layout
    .centerXEqualToView(self.view)
    .centerYEqualToView(self.view)
    .heightIs(40)
    .widthIs(200);
    
    
    refuseBtn.sd_layout
    .bottomSpaceToView(self.view,100)
    .leftSpaceToView(self.view,SCREEN_WIDTH/5)
    .widthRatioToView(self.view,0.2)
    .heightEqualToWidth();
    refuseBtn.sd_cornerRadiusFromWidthRatio=[NSNumber numberWithFloat:0.5];
    
    
    agreeBtn.sd_layout
    .bottomSpaceToView(self.view,100)
    .rightSpaceToView(self.view,SCREEN_WIDTH/5)
    .widthRatioToView(self.view,0.2)
     .heightEqualToWidth();
    agreeBtn.sd_cornerRadiusFromWidthRatio=[NSNumber numberWithFloat:0.5];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // Do any additional setup after loading the view.
}
-(void)contactLawer{
    FindLawerViewController *findLawerVC=[FindLawerViewController new];
    [self.navigationController pushViewController:findLawerVC animated:YES];
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
