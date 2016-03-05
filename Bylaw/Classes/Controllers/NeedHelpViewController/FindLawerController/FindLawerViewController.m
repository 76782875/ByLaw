//
//  FindLawerViewController.m
//  Bylaw
//
//  Created by 小热狗 on 16/3/5.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#import "FindLawerViewController.h"
#import "TYDotIndicatorView.h"
@interface FindLawerViewController ()

@end

@implementation FindLawerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=YellowColor;
    UIImageView *headImgView=[UIImageView new];
    headImgView.image=ImageNamed(@"ic_defund_menu_bg");
    headImgView.backgroundColor=CLEARCOLOR;
    [self.view addSubview:headImgView];

    UIView *bottomView=[UIView new];
    bottomView.backgroundColor=CLEARCOLOR;
    [self.view addSubview:bottomView];
    
    
    
    UILabel * lawName=[UILabel new];
    lawName.backgroundColor=CLEARCOLOR;
    lawName.textColor=DARKGRYCOLOR;
    lawName.font=Title_Font;
    lawName.text=@"唐律师";
    lawName.textAlignment=NSTextAlignmentCenter;
    [bottomView addSubview:lawName];

    
    UILabel * infoLabel=[UILabel new];
    infoLabel.backgroundColor=CLEARCOLOR;
    infoLabel.textColor=DARKGRYCOLOR;
    infoLabel.font=Text_Font;
    infoLabel.text=@"即将与你联系";
    infoLabel.textAlignment=NSTextAlignmentCenter;
    [bottomView addSubview:infoLabel];

    
    
    
    TYDotIndicatorView *circleDot = [[TYDotIndicatorView alloc] initWithFrame:CGRectMake(SCREEN_WIDTH/2-25, SCREEN_HEIGHT/7, 50, SCREEN_HEIGHT/7) dotStyle:TYDotIndicatorViewStyleCircle dotColor:[UIColor whiteColor] dotSize:CGSizeMake(20, 20) dotNumber:3];
    circleDot.backgroundColor = CLEARCOLOR;
    circleDot.layer.cornerRadius = 5.0f;
    [circleDot startAnimating];
    [bottomView addSubview:circleDot];

    
    
    UIButton *myQuesBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    myQuesBtn.backgroundColor=CLEARCOLOR;
    [myQuesBtn setBackgroundImage:ImageNamed(@"IMG_149") forState:UIControlStateNormal];
    [bottomView addSubview:myQuesBtn];
    
    
    UILabel *quesLabel=[UILabel new];
    quesLabel.text=@"我的咨询";
    quesLabel.font=Text_Font;
    quesLabel.backgroundColor=CLEARCOLOR;
    quesLabel.textColor=DARKGRYCOLOR;
    quesLabel.textAlignment=NSTextAlignmentCenter;
    [bottomView addSubview:quesLabel];
    
    
    
    
    headImgView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .topEqualToView(self.view)
    .heightRatioToView(self.view,0.3);
    
    
    bottomView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .topSpaceToView(headImgView,0)
    .heightRatioToView(self.view,0.7);
    
    
    CGFloat pading=SCREEN_HEIGHT*3/(7*3*5);
    lawName.sd_layout
    .leftEqualToView(bottomView)
    .rightEqualToView(bottomView)
    .topSpaceToView(bottomView,pading)
    .heightIs(pading);
    
    
    infoLabel.sd_layout
    .leftEqualToView(bottomView)
    .rightEqualToView(bottomView)
    .topSpaceToView(lawName,pading)
    .heightIs(pading);
   
    
    
    
    quesLabel.sd_layout
    .bottomSpaceToView(bottomView,30)
    .leftSpaceToView(bottomView,50)
    .rightSpaceToView(bottomView,50)
    .heightIs(30);
    
    myQuesBtn.sd_layout
    .bottomSpaceToView(quesLabel,5)
    .centerXEqualToView(bottomView)
    .widthIs(30)
    .heightEqualToWidth();

    
    
    
    
    
    
    
    
    
    
    // Do any additional setup after loading the view.
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
