//
//  BaseViewController.m
//  Bylaw
//
//  Created by 小热狗 on 16/2/28.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#import "BaseViewController.h"
#import "LeftTableViewController.h"
#import "UIViewController+MMDrawerController.h"
@interface BaseViewController ()

@end

@implementation BaseViewController
- (void)viewWillAppear:(BOOL)animated
{
    
    [self.navigationController.navigationBar setShadowImage:[UIImage new]];
    
    
    [self.navigationController.navigationBar lt_setBackgroundColor:[UIColor clearColor]];

        
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor=BACKGROUND_COLOR;
    
 //菜单按钮
    [self createMenuBtn];
    
    
    
//返回按钮
//    UIImage *backImg=ImageNamed(@"IMG_56");
//    
//    UIBarButtonItem *backBtn=[[UIBarButtonItem alloc] initWithImage:nil style:UIBarButtonItemStyleDone target:self action:@selector(backFront)];
//    
//    backBtn.image=backImg;
//    
//    self.navigationItem.rightBarButtonItem=menuBtn;
    
    
  

    // Do any additional setup after loading the view.
}

-(void)hiddenLeftBtn{
    
    
}

-(void)hiddenRightBtn{
    
    
    
}



-(void)createMenuBtn{
    UIButton *menuBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    menuBtn.frame = CGRectMake(0, 0, 44, 44);
    
    [menuBtn setImage:ImageNamed(@"IMG_97") forState:UIControlStateNormal];
    [menuBtn addTarget:self action:@selector(showLeft) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:menuBtn];
    self.navigationItem.leftBarButtonItem = leftItem;
}


-(void)createBackBtn{
    
    
}

-(void)createAddBtn{
    
    
    
}

#pragma mark 展示左侧菜单
- (void)showLeft {
    
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];

}
#pragma mark 返回上一层
-(void)backFront{
    
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
