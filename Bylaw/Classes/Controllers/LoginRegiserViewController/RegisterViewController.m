//
//  RegisterViewController.m
//  Bylaw
//
//  Created by 小热狗 on 16/3/6.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()
{
    UIButton *codeBtn;
}
@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=BACKGROUND_COLOR;

    
#pragma mark 加载界面
    [self initWithSubViews];
    
    
    
    
    // Do any additional setup after loading the view.
}

/**
 *  加载界面
 */
-(void)initWithSubViews{
    UILabel *titileLabel=[UILabel new];
    titileLabel.backgroundColor=CLEARCOLOR;
    titileLabel.font=Big_Title_Font;
    titileLabel.text=@"新用户";
    titileLabel.textAlignment=NSTextAlignmentCenter;
    titileLabel.textColor=BLACKCOLOR;
    [self.view addSubview:titileLabel];
    
    
    UILabel *msgLabel=[UILabel new];
    msgLabel.backgroundColor=CLEARCOLOR;
    msgLabel.font=Title_Font;
    msgLabel.text=@"请输入手机号";
    msgLabel.textAlignment=NSTextAlignmentCenter;
    msgLabel.textColor=DARKGRYCOLOR;
    [self.view addSubview:msgLabel];
    
    UIView *phoneView=[UIView new];
    phoneView.backgroundColor=YellowColor;
    phoneView.layer.cornerRadius=10;
    phoneView.autoresizingMask=YES;
    [self.view addSubview:phoneView];
    
    
    UILabel *tagLabel=[UILabel new];
    tagLabel.backgroundColor=CLEARCOLOR;
    tagLabel.font=Title_Font;
    tagLabel.text=@"+86 ｜";
    tagLabel.textAlignment=NSTextAlignmentRight;
    tagLabel.textColor=BLACKCOLOR;
    [phoneView addSubview:tagLabel];
    
    self.phoneTextField=[UITextField new];
    self.phoneTextField.backgroundColor=CLEARCOLOR;
    [phoneView addSubview:self.phoneTextField];
    
    self.codeTextField=[UITextField new];
    self.codeTextField.backgroundColor=[UIColor whiteColor];
    self.codeTextField.layer.borderWidth = 1;
    self.codeTextField.layer.borderColor = YellowColor.CGColor;
    self.codeTextField.layer.cornerRadius=10;
    self.codeTextField.autoresizingMask=YES;
    [self.view addSubview:self.codeTextField];
    
    codeBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [codeBtn setTitle:@"获取验证码" forState:UIControlStateNormal];
    codeBtn.backgroundColor=YellowColor;
    [codeBtn addTarget:self action:@selector(reciveCode) forControlEvents:UIControlEventTouchUpInside];
    codeBtn.titleLabel.font=[UIFont systemFontOfSize:12];
    codeBtn.layer.cornerRadius=10;
    codeBtn.autoresizingMask=YES;
    [codeBtn setTitleColor:DARKGRYCOLOR forState:UIControlStateNormal];
    [self.view addSubview:codeBtn];
    
   
    UILabel *clauseLabel=[UILabel new];
    clauseLabel.backgroundColor=CLEARCOLOR;
    clauseLabel.font=[UIFont systemFontOfSize:12];
    clauseLabel.text=@"点击下一步表示您已经阅读并同意了《联能免责条款》";
    clauseLabel.textAlignment=NSTextAlignmentCenter;
    clauseLabel.textColor=DARKGRYCOLOR;
    [self.view addSubview:clauseLabel];
    
    
    UIButton *nextStepBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [nextStepBtn setTitle:@"下一步" forState:UIControlStateNormal];
    nextStepBtn.backgroundColor=YellowColor;
    nextStepBtn.titleLabel.font=[UIFont systemFontOfSize:12];
    [nextStepBtn addTarget:self action:@selector(registerNextSetp) forControlEvents:UIControlEventTouchUpInside];
    [nextStepBtn setTitleColor:DARKGRYCOLOR forState:UIControlStateNormal];
    [self.view addSubview:nextStepBtn];
    
    titileLabel.sd_layout
    .leftSpaceToView(self.view,100)
    .rightSpaceToView(self.view,100)
    .topSpaceToView(self.view,NavigationBar_HEIGHT+STATUS_BAR_HEIGHT)
    .heightIs(NavigationBar_HEIGHT);
    
    
    msgLabel.sd_layout
    .leftSpaceToView(self.view,100)
    .rightSpaceToView(self.view,100)
    .topSpaceToView(titileLabel,NavigationBar_HEIGHT)
    .heightIs(30);
    
    
    
    phoneView.sd_layout
    .topSpaceToView(msgLabel,MARGIN20)
    .leftSpaceToView(self.view,MARGIN20)
    .rightSpaceToView(self.view,MARGIN20)
    .heightIs(NavigationBar_HEIGHT);
    
    tagLabel.sd_layout
    .topSpaceToView(phoneView,0)
    .bottomSpaceToView(phoneView,0)
    .leftSpaceToView(phoneView,0)
    .widthIs(70);
    
    self.phoneTextField.sd_layout
    .leftSpaceToView(tagLabel,MARGIN10)
    .rightSpaceToView(phoneView,MARGIN10)
    .topSpaceToView(phoneView,0)
    .bottomSpaceToView(phoneView,0);
    
    
    CGFloat textW=(SCREEN_WIDTH-3*MARGIN20)/3;
    
    self.codeTextField.sd_layout
    .topSpaceToView(phoneView,MARGIN20)
    .leftSpaceToView(self.view,MARGIN20)
    .widthIs(2*textW)
    .heightIs(NavigationBar_HEIGHT);
    
    codeBtn.sd_layout
    .topSpaceToView(phoneView,MARGIN20)
    .rightSpaceToView(self.view,MARGIN20)
    .widthIs(textW)
    .heightIs(NavigationBar_HEIGHT);
    
    clauseLabel.sd_layout
    .leftSpaceToView(self.view,MARGIN20)
    .rightSpaceToView(self.view,MARGIN20)
    .topSpaceToView(self.codeTextField,MARGIN20)
    .autoHeightRatio(0);
    
    clauseLabel.isAttributedContent=YES;
    
    
    nextStepBtn.sd_layout
    .bottomSpaceToView(self.view,50)
    .centerXEqualToView(self.view)
    .widthRatioToView(self.view,0.2)
    .heightEqualToWidth();
    nextStepBtn.sd_cornerRadiusFromWidthRatio=[NSNumber numberWithFloat:0.5];

}




/**
 *  用户注册
 */
-(void)regiserUser{
    
    NSString *str=[NSString stringWithFormat:@"mobile=%@&password=%@",self.phoneTextField.text,self.codeTextField.text];
    
    
   
    
    
    
}


/**
 *  获取验证码
 */
-(void)reciveCode{
    
    
    
    
    __block int timeout=30; //倒计时时间
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0,queue);
    dispatch_source_set_timer(_timer,dispatch_walltime(NULL, 0),1.0*NSEC_PER_SEC, 0); //每秒执行
    dispatch_source_set_event_handler(_timer, ^{
        if(timeout<=0){ //倒计时结束，关闭
            dispatch_source_cancel(_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                //设置界面的按钮显示 根据自己需求设置
                [codeBtn setTitle:@"发送验证码" forState:UIControlStateNormal];
                codeBtn.userInteractionEnabled = YES;
            });
        }else{
            //            int minutes = timeout / 60;
            int seconds = timeout % 60;
            NSString *strTime = [NSString stringWithFormat:@"%.2d", seconds];
            dispatch_async(dispatch_get_main_queue(), ^{
                //设置界面的按钮显示 根据自己需求设置
                
                [codeBtn setTitle:[NSString stringWithFormat:@"%@秒后重新发送",strTime] forState:UIControlStateNormal];
                codeBtn.userInteractionEnabled = NO;
                
            });
            timeout--;
            
        }
    });
    dispatch_resume(_timer);

    [self postServerForCode];
    
}

/**
 *  注册下一步action
 */
-(void)registerNextSetp{
    
    
    
}

/**
 *  请求验证码
 */
-(void)postServerForCode{
   
    
    NSDictionary *postDic = @{@"tel":self.phoneTextField.text};
    
    
    [MHNetworkManager postReqeustWithURL:SendMsgUrl params:postDic successBlock:^(id returnData,int code,NSString *msg) {
        
        NSDictionary *dic=[[returnData objectForKey:@"jsonDataBean"] objectForKey:@"result"];
        NSString *judgeCode=[[returnData objectForKey:@"jsonDataBean"] objectForKey:@"code"];
        if ([judgeCode isEqualToString:@"1"]) {
            self.msgCode=[dic objectForKey:@"code"];
        
        NSLog(@"----%@",returnData);
        }
    } failureBlock:^(NSError *error) {
        
        NSLog(@"-----%@",error.localizedDescription);
        
    } showHUD:YES];

    
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
