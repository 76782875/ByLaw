//
//  MyQuestionViewController.m
//  Bylaw
//
//  Created by 小热狗 on 16/3/4.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#import "MyQuestionViewController.h"
#import "ContactViewController.h"
@interface MyQuestionViewController ()

@end

@implementation MyQuestionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *quesView=[UIView new];
    quesView.backgroundColor=YellowColor;
    [[quesView layer] setShadowOffset:CGSizeMake(1, 1)];
    [[quesView layer] setShadowRadius:5];
    [[quesView layer] setShadowOpacity:1];
    [[quesView layer] setShadowColor:[UIColor darkGrayColor].CGColor];
    [self.view addSubview:quesView];
    
    
    UIView*topView=[UIView new];
    topView.backgroundColor=CLEARCOLOR;
    [quesView addSubview:topView];
    
    
    UILabel *titleLabel=[UILabel new];
    titleLabel.backgroundColor=CLEARCOLOR;
    titleLabel.text=@"MY问题主题";
    titleLabel.textColor=BLACKCOLOR;
    titleLabel.font=Text_Font;
    titleLabel.textAlignment=NSTextAlignmentLeft;
    [topView addSubview:titleLabel];
    
    UIButton *cancelBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [cancelBtn setBackgroundImage:ImageNamed(@"img_login_no") forState:UIControlStateNormal];
    [topView addSubview:cancelBtn];
    
    UIButton *msgBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [msgBtn setBackgroundImage:ImageNamed(@"IMG_104") forState:UIControlStateNormal];
    [topView addSubview:msgBtn];
    
    
    
    UITextView *contentText=[UITextView new];
    contentText.backgroundColor=[UIColor whiteColor];
    [quesView addSubview:contentText];
    
    
    
    
    
    
    
    UIView*bottomView=[UIView new];
    bottomView.backgroundColor=CLEARCOLOR;
    [quesView addSubview:bottomView];
    
    
    
    UIImageView *imgView=[UIImageView new];
    imgView.image=ImageNamed(@"IMG_111");
    imgView.backgroundColor=CLEARCOLOR;
    [bottomView addSubview:imgView];
    
    
    
    UIButton *upLoadBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [upLoadBtn setTitle:@"问题" forState:UIControlStateNormal];
    upLoadBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [upLoadBtn setBackgroundColor:CLEARCOLOR];
    [bottomView addSubview:upLoadBtn];
    
    UIButton *sendBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [sendBtn setTitle:@"发送" forState:UIControlStateNormal];
    [sendBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [sendBtn addTarget:self action:@selector(sendQuestion)forControlEvents:UIControlEventTouchUpInside];
    sendBtn.backgroundColor=DARKGRYCOLOR;
    [bottomView addSubview:sendBtn];
    
    
    
    
    
    
    
    
    
    quesView.sd_layout
    .leftSpaceToView(self.view,MARGIN10)
    .rightSpaceToView(self.view,MARGIN10)
    .topSpaceToView(self.view,70)
    .bottomSpaceToView(self.view,70);
    quesView.sd_cornerRadius=[NSNumber numberWithFloat:10];
    
    CGFloat pading=(self.view.frame.size.height-140)/20;
    
    
    topView.sd_layout
    .leftSpaceToView(quesView,MARGIN10)
    .rightSpaceToView(quesView,MARGIN10)
    .topSpaceToView(quesView,0)
    .heightRatioToView(quesView,0.25);
    
    
    contentText.sd_layout
    .leftSpaceToView(quesView,MARGIN15)
    .rightSpaceToView(quesView,MARGIN15)
    .topSpaceToView(topView,0)
    .heightRatioToView(quesView,0.5);
    contentText.sd_cornerRadius=[NSNumber numberWithFloat:10];
    
    
    bottomView.sd_layout
    .leftSpaceToView(quesView,MARGIN10)
    .rightSpaceToView(quesView,MARGIN10)
    .bottomSpaceToView(quesView,0)
    .heightRatioToView(quesView,0.25);
    
    
    
    
    
    titleLabel.sd_layout
    .leftSpaceToView(topView,0)
    .topSpaceToView(topView,pading)
    .widthRatioToView(topView,0.75)
    .heightRatioToView(topView,0.2);
    
    cancelBtn.sd_layout
    .rightSpaceToView(topView,0)
    .topSpaceToView(topView,pading/2)
    .heightRatioToView(topView,0.2)
    .widthEqualToHeight();
    
    
    msgBtn.sd_layout
    .leftSpaceToView(topView,MARGIN10)
    .topSpaceToView(titleLabel,pading)
    .heightRatioToView(topView,0.2)
    .widthEqualToHeight();
    
    
    imgView.sd_layout
    .leftSpaceToView(bottomView,MARGIN10)
    .topSpaceToView(bottomView,pading)
    .heightRatioToView(bottomView,0.2)
    .widthEqualToHeight();
    
    
    upLoadBtn.sd_layout
    .leftSpaceToView(imgView,MARGIN10)
    .topSpaceToView(bottomView,pading)
    .widthRatioToView(bottomView,0.5)
    .heightRatioToView(bottomView,0.2);
    
    sendBtn.sd_layout
    .rightSpaceToView(bottomView,0)
    .bottomSpaceToView(bottomView,pading/1.5)
    .topSpaceToView(bottomView,pading)
    .widthEqualToHeight();
    sendBtn.sd_cornerRadiusFromHeightRatio=[NSNumber numberWithFloat:0.5];
    
    
    
    // Do any additional setup after loading the view.
}
-(void)sendQuestion{
    
    ContactViewController *contactVC=[ContactViewController new];
    [self.navigationController pushViewController:contactVC animated:YES];
    
    
    
}

    // Do any additional setup after loading the view.


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
