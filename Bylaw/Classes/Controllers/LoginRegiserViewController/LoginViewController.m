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
    [self.view addSubview:self.usernameTextField];
    
    self.passwordTextField=[UITextField new];
    self.passwordTextField.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:self.passwordTextField];
    
    UIButton *forgetBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [forgetBtn setTitle:@"忘记密码" forState:UIControlStateNormal];
    forgetBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    [forgetBtn setBackgroundColor:CLEARCOLOR];
    [self.view addSubview:forgetBtn];
    
    
    
    UIButton *registerBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [registerBtn setTitle:@"注册" forState:UIControlStateNormal];
    registerBtn.backgroundColor=[UIColor whiteColor];
    registerBtn.titleLabel.font=Text_Font;
    [registerBtn setTitleColor:DARKGRYCOLOR forState:UIControlStateNormal];
    registerBtn.layer.borderWidth = 1;
    registerBtn.layer.borderColor = YellowColor.CGColor;
    [self.view addSubview:registerBtn];
    

    UIButton *weixinBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [weixinBtn setTitle:@"微信登陆" forState:UIControlStateNormal];
    weixinBtn.backgroundColor=[UIColor whiteColor];
    weixinBtn.titleLabel.font=Text_Font;
    [weixinBtn setTitleColor:DARKGRYCOLOR forState:UIControlStateNormal];
    weixinBtn.layer.borderWidth = 1;
    weixinBtn.layer.borderColor = YellowColor.CGColor;
    [self.view addSubview:weixinBtn];
    

    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    loginBtn.backgroundColor=[UIColor whiteColor];
    loginBtn.titleLabel.font=Text_Font;
    [loginBtn setTitleColor:DARKGRYCOLOR forState:UIControlStateNormal];
    loginBtn.layer.borderWidth = 1;
    loginBtn.layer.borderColor = YellowColor.CGColor;
    [self.view addSubview:loginBtn];
    

    
    
    
    
    
    
    
    
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
