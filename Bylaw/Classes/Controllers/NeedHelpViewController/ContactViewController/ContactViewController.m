//
//  ContactViewController.m
//  Bylaw
//
//  Created by 小热狗 on 16/3/4.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#import "ContactViewController.h"
#import "CZCountDownView.h"
#import "TYDotIndicatorView.h"
#import "AgreeViewController.h"
#import "MZTimerLabel.h"
#import "CancelViewController.h"
#import "UIViewController+CWPopup.h"
#define TimeCout 10
@interface ContactViewController ()
{
    
    CGFloat sectionH;
}
@end

@implementation ContactViewController

-(void)viewWillAppear:(BOOL)animated{
    
    [self addRightNavItem];
    self.navigationController.navigationBar.hidden=NO;
    
    
}
-(void)viewWillDisappear:(BOOL)animated{
    self.navigationItem.rightBarButtonItem=nil;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
   
 /*
#pragma mark 倒计时
//    CZCountDownView *countDown = [CZCountDownView shareCountDown];
//    countDown.timestamp =TimeCout;
//    countDown.backgroundImageName =nil;
//    countDown.timerStopBlock = ^{
//        NSLog(@"时间停止");
//        
//        [self stopTime];
//       [self reciveLayerInfo];
//        
//    };
//    [self.view addSubview:countDown];
 */
    
   
    
    UILabel * waitLabel=[UILabel new];
    waitLabel.backgroundColor=CLEARCOLOR;
    waitLabel.textColor=DARKGRYCOLOR;
    waitLabel.text=@"正在等待";
    waitLabel.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:waitLabel];

    
    
    
    MZTimerLabel *countDown = [MZTimerLabel new];
    countDown.timerType = MZTimerLabelTypeStopWatch;
    [self.view addSubview:countDown];
    //do some styling
    countDown.timeLabel.backgroundColor = [UIColor clearColor];
    countDown.timeLabel.font = [UIFont systemFontOfSize:28.0f];
    countDown.timeLabel.textColor = DARKGRYCOLOR;
    countDown.timeLabel.textAlignment = NSTextAlignmentCenter; //UITextAlignmentCenter is deprecated in iOS 7.0
    //fire
    [countDown start];

    
    
    
    
    
    TYDotIndicatorView *circleDot = [[TYDotIndicatorView alloc] initWithFrame:CGRectMake(SCREEN_WIDTH/2-25, SCREEN_HEIGHT/3, 50, SCREEN_HEIGHT/3) dotStyle:TYDotIndicatorViewStyleCircle dotColor:YellowColor dotSize:CGSizeMake(20, 20) dotNumber:6];
    circleDot.backgroundColor = CLEARCOLOR;
    circleDot.layer.cornerRadius = 5.0f;
    [circleDot startAnimating];
    [self.view addSubview:circleDot];
    
  
    
    
    
    
    
    UIButton *myQuesBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    myQuesBtn.backgroundColor=CLEARCOLOR;
    [myQuesBtn setBackgroundImage:ImageNamed(@"IMG_149") forState:UIControlStateNormal];
    [self.view addSubview:myQuesBtn];
    
    
    UILabel *quesLabel=[UILabel new];
    quesLabel.text=@"我的咨询";
    quesLabel.font=Text_Font;
    quesLabel.backgroundColor=CLEARCOLOR;
    quesLabel.textColor=DARKGRYCOLOR;
    quesLabel.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:quesLabel];

    
    
    waitLabel.sd_layout
    .topSpaceToView(self.view,NavigationBar_HEIGHT+MARGIN20)
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .heightIs(35.0);
    
    
    countDown.sd_layout
    .leftSpaceToView(self.view,60)
    .rightSpaceToView(self.view,60)
    .topSpaceToView(waitLabel,MARGIN20)
     .heightIs(35.0);
    
    
//    circleDot.sd_layout
//    .centerXEqualToView(self.view)
//    .topSpaceToView(countDown,50)
//    .bottomSpaceToView(myQuesBtn,80)
//    .widthIs(50);
    
    
    
    quesLabel.sd_layout
    .bottomSpaceToView(self.view,30)
    .leftSpaceToView(self.view,50)
    .rightSpaceToView(self.view,50)
    .heightIs(30);
    
    myQuesBtn.sd_layout
    .bottomSpaceToView(quesLabel,5)
    .centerXEqualToView(self.view)
    .widthIs(30)
    .heightEqualToWidth();
    
    
    
    
    
    
     [self createAlertView];
    
    
    
    // Do any additional setup after loading the view.
}

#pragma mark 弹出视图

-(void)createAlertView{
    
    
   
    
    self.alertView=[[UIView alloc]initWithFrame:CGRectMake(0.0f,-SCREEN_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT)];
    self.alertView.backgroundColor=[BACKGROUND_COLOR colorWithAlphaComponent:0.4];
    [self.view addSubview:self.alertView];
    
    
    
    UIView *alertTitleView=[UIView new];
    alertTitleView.backgroundColor=YellowColor;
    [self.alertView addSubview:alertTitleView];
    
    
    UILabel *alertTitleLabel=[UILabel new];
    alertTitleLabel.text=@"取消咨询问题?";
    alertTitleLabel.textAlignment=NSTextAlignmentLeft;
    alertTitleLabel.font=Text_Font;
    alertTitleLabel.textColor=DARKGRYCOLOR;
    [alertTitleView addSubview:alertTitleLabel];
    
    UIButton *cancelBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    cancelBtn.backgroundColor=CLEARCOLOR ;
    [cancelBtn addTarget:self action:@selector(hiddenAlertView) forControlEvents:UIControlEventTouchUpInside];
    [cancelBtn setImage:ImageNamed(@"img_login_no") forState:UIControlStateNormal];
    [alertTitleView addSubview:cancelBtn];
    
    CGFloat btnW=(SCREEN_WIDTH-3*MARGIN15)/2;
  

    UIButton *sureBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    sureBtn.frame=CGRectMake(MARGIN15, NavigationBar_HEIGHT+STATUS_BAR_HEIGHT+MARGIN15, btnW, NavigationBar_HEIGHT+STATUS_BAR_HEIGHT);
    sureBtn.backgroundColor=DARKGRYCOLOR;
    [sureBtn addTarget:self action:@selector(backView) forControlEvents:UIControlEventTouchUpInside];
    sureBtn.layer.cornerRadius=10;
    sureBtn.autoresizingMask=YES;
    [sureBtn setTitle:@"确定" forState:UIControlStateNormal];
    [sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.alertView addSubview:sureBtn];
    
    CGFloat noCancelX=CGRectGetMaxX(sureBtn.frame)+MARGIN15;
    UIButton *noCancelBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [noCancelBtn addTarget:self action:@selector(hiddenAlertView) forControlEvents:UIControlEventTouchUpInside];
    noCancelBtn.layer.cornerRadius=10;
    noCancelBtn.autoresizingMask=YES;
    noCancelBtn.frame=CGRectMake(noCancelX, NavigationBar_HEIGHT+STATUS_BAR_HEIGHT+MARGIN15, btnW, NavigationBar_HEIGHT+STATUS_BAR_HEIGHT);
    noCancelBtn.backgroundColor=YellowColor;
    [noCancelBtn setTitle:@"不取消" forState:UIControlStateNormal];
    [noCancelBtn setTitleColor:DARKGRYCOLOR forState:UIControlStateNormal];
    [self.alertView addSubview:noCancelBtn];

    
   alertTitleView.sd_layout
   .leftEqualToView(self.alertView)
    .rightEqualToView(self.alertView)
    .heightIs(NavigationBar_HEIGHT+STATUS_BAR_HEIGHT);
    
    
    alertTitleLabel.sd_layout
    .leftSpaceToView(alertTitleView,MARGIN20)
    .topSpaceToView(alertTitleView,(NavigationBar_HEIGHT+STATUS_BAR_HEIGHT-35)/2)
    .heightIs(35)
    .widthRatioToView(alertTitleView,0.5);
    
    
    cancelBtn.sd_layout
    .rightSpaceToView(alertTitleView,MARGIN20)
    .topSpaceToView(alertTitleView,(NavigationBar_HEIGHT+STATUS_BAR_HEIGHT-44)/2)
    .widthIs(44)
    .heightEqualToWidth();
    


}


-(void)stopTime{
    [CZCountDownView shareCountDown].hourLabel.text=@"0时";
     [CZCountDownView shareCountDown].minuesLabel.text=@"0分";
     [CZCountDownView shareCountDown].secondsLabel.text=@"0秒";
    
}

-(void)reciveLayerInfo{
    
    AgreeViewController *agreeVC=[AgreeViewController new];
    [self.navigationController pushViewController:agreeVC animated:YES];
    
    
    
}

-(void)addRightNavItem{
    UIButton *menuBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    menuBtn.frame = CGRectMake(0, 0, 44, 44);
    
    [menuBtn setImage:ImageNamed(@"img_login_no") forState:UIControlStateNormal];
    [menuBtn addTarget:self action:@selector(showAlertView) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:menuBtn];
    self.navigationItem.rightBarButtonItem = rightItem;

}




-(void)backView{
    
    [self.navigationController popViewControllerAnimated:YES];
}



-(void)showAlertView{
   self.navigationController.navigationBar.hidden=YES;
    [UIView beginAnimations:nil context:nil];
    
    // 动画时间曲线 EaseInOut效果
    
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    
    // 动画时间
    
    [UIView setAnimationDuration:0.5];
    
    self.alertView.frame = CGRectMake(0.0f,0, SCREEN_WIDTH, SCREEN_HEIGHT);
    
    // 动画结束（或者用提交也不错）
    
    [UIView commitAnimations];

}

-(void)hiddenAlertView{
    self.navigationController.navigationBar.hidden=NO;

    [UIView beginAnimations:nil context:nil];
    
    // 动画时间曲线 EaseInOut效果
    
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    
    // 动画时间
    
    [UIView setAnimationDuration:0.5];
    
    self.alertView.frame = CGRectMake(0.0f,-SCREEN_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT);
    
    // 动画结束（或者用提交也不错）
    
    [UIView commitAnimations];

    
    
    
    
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
