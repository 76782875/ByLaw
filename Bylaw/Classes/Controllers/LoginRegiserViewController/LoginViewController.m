//
//  LoginViewController.m
//  Bylaw
//
//  Created by 小热狗 on 16/3/5.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=BACKGROUND_COLOR;
    
    
    UILabel *titileLabel=[UILabel new];
    titileLabel.backgroundColor=CLEARCOLOR;
    titileLabel.font=Big_Title_Font;
    titileLabel.text=@"登陆";
    titileLabel.textAlignment=NSTextAlignmentCenter;
    titileLabel.textColor=BLACKCOLOR;
    [self.view addSubview:titileLabel];
    
    self.usernameTextField=[UITextField new];
    self.usernameTextField.backgroundColor=[UIColor whiteColor];
    self.usernameTextField.layer.cornerRadius=5;
    self.usernameTextField.autoresizingMask=YES;
    self.usernameTextField.layer.borderWidth = 1;
    self.usernameTextField.layer.borderColor = YellowColor.CGColor;
    [self.view addSubview:self.usernameTextField];
    
    self.passwordTextField=[UITextField new];
    self.passwordTextField.backgroundColor=YellowColor;
    self.passwordTextField.layer.cornerRadius=5;
    self.passwordTextField.autoresizingMask=YES;
   [self.view addSubview:self.passwordTextField];
    
    UIButton *forgetBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [forgetBtn setTitle:@"忘记密码" forState:UIControlStateNormal];
    [forgetBtn setTitleColor:DARKGRYCOLOR forState:UIControlStateNormal];
    forgetBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    [forgetBtn setBackgroundColor:CLEARCOLOR];
    [self.view addSubview:forgetBtn];
    
    
    
    UIButton *registerBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [registerBtn setTitle:@"注册" forState:UIControlStateNormal];
    registerBtn.backgroundColor=[UIColor whiteColor];
    registerBtn.titleLabel.font=[UIFont systemFontOfSize:14];
    [registerBtn setTitleColor:DARKGRYCOLOR forState:UIControlStateNormal];
    registerBtn.layer.borderWidth = 1;
    registerBtn.layer.borderColor = YellowColor.CGColor;
    [self.view addSubview:registerBtn];
    

    UIButton *weixinBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [weixinBtn setTitle:@"微信登陆" forState:UIControlStateNormal];
    weixinBtn.backgroundColor=[UIColor whiteColor];
    weixinBtn.titleLabel.font=[UIFont systemFontOfSize:14];
    [weixinBtn setTitleColor:DARKGRYCOLOR forState:UIControlStateNormal];
    weixinBtn.layer.borderWidth = 1;
    weixinBtn.layer.borderColor = YellowColor.CGColor;
    [self.view addSubview:weixinBtn];
    

    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    loginBtn.backgroundColor=YellowColor;
    loginBtn.titleLabel.font=[UIFont systemFontOfSize:14];
    [loginBtn setTitleColor:DARKGRYCOLOR forState:UIControlStateNormal];
    [self.view addSubview:loginBtn];
    

    titileLabel.sd_layout
    .leftSpaceToView(self.view,100)
    .rightSpaceToView(self.view,100)
    .topSpaceToView(self.view,NavigationBar_HEIGHT+STATUS_BAR_HEIGHT+50)
    .heightIs(NavigationBar_HEIGHT);
    
    self.usernameTextField.sd_layout
    .topSpaceToView(titileLabel,50)
    .leftSpaceToView(self.view,MARGIN20)
    .rightSpaceToView(self.view,MARGIN20)
    .heightIs(NavigationBar_HEIGHT);
    
    self.passwordTextField.sd_layout
    .topSpaceToView(self.usernameTextField,MARGIN20)
    .leftSpaceToView(self.view,MARGIN20)
    .rightSpaceToView(self.view,MARGIN20)
    .heightIs(NavigationBar_HEIGHT);
    
    forgetBtn.sd_layout
    .leftSpaceToView(self.view,100)
    .rightSpaceToView(self.view,100)
    .topSpaceToView(self.passwordTextField,MARGIN20)
    .heightIs(30);
    
    
//    CGFloat marginBig=3*SCREEN_HEIGHT/20;
//    CGFloat marginSmall=SCREEN_HEIGHT/20;
    
    

    weixinBtn.sd_layout
    .bottomSpaceToView(self.view,50)
    .centerXEqualToView(self.view)
    .widthRatioToView(self.view,0.2)
    .heightEqualToWidth();
    weixinBtn.sd_cornerRadiusFromWidthRatio=[NSNumber numberWithFloat:0.5];
    
    registerBtn.sd_layout
    .bottomSpaceToView(self.view,50)
    .rightSpaceToView(weixinBtn,MARGIN20)
    .widthRatioToView(self.view,0.2)
    .heightEqualToWidth();
    registerBtn.sd_cornerRadiusFromWidthRatio=[NSNumber numberWithFloat:0.5];
    
    
    
    
    
    loginBtn.sd_layout
    .bottomSpaceToView(self.view,50)
    .leftSpaceToView(weixinBtn,MARGIN20)
    .widthRatioToView(self.view,0.2)
    .heightEqualToWidth();
    loginBtn.sd_cornerRadiusFromWidthRatio=[NSNumber numberWithFloat:0.5];
    
    
    
    
    
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
