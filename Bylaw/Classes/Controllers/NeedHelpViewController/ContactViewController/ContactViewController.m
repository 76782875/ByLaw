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
#define TimeCout 10
@interface ContactViewController ()
{
    
    CGFloat sectionH;
}
@end

@implementation ContactViewController

-(void)viewWillAppear:(BOOL)animated{
    
    [self addRightNavItem];
    
    
    
}
-(void)viewWillDisappear:(BOOL)animated{
    self.navigationItem.rightBarButtonItem=nil;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel * waitLabel=[UILabel new];
    waitLabel.backgroundColor=CLEARCOLOR;
    waitLabel.textColor=DARKGRYCOLOR;
    waitLabel.text=@"正在等待";
    waitLabel.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:waitLabel];
    
    CZCountDownView *countDown = [CZCountDownView shareCountDown];
    countDown.timestamp =TimeCout;
    countDown.backgroundImageName =nil;
    countDown.timerStopBlock = ^{
        NSLog(@"时间停止");
        
        [self stopTime];
       [self reciveLayerInfo];
        
    };
    [self.view addSubview:countDown];
    
    
    
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
    .leftSpaceToView(self.view,80)
    .rightSpaceToView(self.view,80)
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
    
    
    
    
    
    
    
    
    
    
    // Do any additional setup after loading the view.
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
    [menuBtn addTarget:self action:@selector(cancelView) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:menuBtn];
    self.navigationItem.rightBarButtonItem = rightItem;

}


-(void)cancelView{
    
    [self.navigationController popViewControllerAnimated:YES];
    
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
