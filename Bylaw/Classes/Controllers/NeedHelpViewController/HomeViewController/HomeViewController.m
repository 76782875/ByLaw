//
//  HomeViewController.m
//  Bylaw
//
//  Created by 小热狗 on 16/3/4.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#import "HomeViewController.h"

#import "MyQuestionViewController.h"
@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *needBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    needBtn.backgroundColor=YellowColor;
    [needBtn setTitle:@"需要帮助" forState:UIControlStateNormal];
    [needBtn addTarget:self action:@selector(needHelp) forControlEvents:UIControlEventTouchUpInside];
    [needBtn setTitleColor:BLACKCOLOR forState:UIControlStateNormal];
    needBtn.titleLabel.font=Title_Font;
    [self.view addSubview:needBtn];
    
    
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
    
    
    
    needBtn.sd_layout
    .centerYEqualToView(self.view)
    .centerXEqualToView(self.view)
    .heightRatioToView(self.view,0.4)
    .bottomSpaceToView(myQuesBtn,85)
    //.topSpaceToView(self.view,150)
    .widthEqualToHeight();
    needBtn.sd_cornerRadiusFromHeightRatio=[NSNumber numberWithFloat:0.5];

  
    
    
    
    
    
    
    
    
    
    
    // Do any additional setup after loading the view.
}


-(void)needHelp{
    MyQuestionViewController *myQuesVC=[MyQuestionViewController new];
    [self.navigationController pushViewController:myQuesVC animated:YES];
    
    
    
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
