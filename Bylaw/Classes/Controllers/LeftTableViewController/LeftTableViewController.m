//
//  LeftTableViewController.m
//  Bylaw
//
//  Created by 小热狗 on 16/2/28.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#import "LeftTableViewController.h"
#import "LeftCell.h"
#import "HomeViewController.h"
#import "MyInfoViewController.h"
#import "SysMsgViewController.h"
#import "AccManViewController.h"
#import "SafeViewController.h"

#import "UIViewController+MMDrawerController.h"
@interface LeftTableViewController ()

@end

@implementation LeftTableViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
        NSLog(@"Left will appear");
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    
    NSLog(@"Left did appear");
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"Left will disappear");
}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"Left did disappear");
}

-(void)viewDidLoad{
    [super viewDidLoad];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.tableView setDelegate:self];
    [self.tableView setDataSource:self];
    [self.view addSubview:self.tableView];
    [self.tableView setAutoresizingMask:UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.tableView setBackgroundColor:CLEARCOLOR];
    
    [self.view setBackgroundColor:TableBackColor];
    
    
    UIImageView *imgView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.tableView.frame.size.width, SCREEN_HEIGHT*2/7)];
    imgView.image=ImageNamed(@"ic_defund_menu_bg");
    self.tableView.tableHeaderView=imgView;
    
    
    UIButton *exitBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    exitBtn.frame=CGRectMake(0, 0, self.tableView.frame.size.width, 44);
    exitBtn.titleLabel.font=[UIFont systemFontOfSize:17];
    exitBtn.backgroundColor=[UIColor darkGrayColor];
    [exitBtn setTitle:@"退出" forState:UIControlStateNormal];
    [exitBtn addTarget:self action:@selector(exitLogin) forControlEvents:UIControlEventTouchUpInside];
    [exitBtn setTitleColor:YellowColor forState:UIControlStateNormal];
    exitBtn.contentEdgeInsets=UIEdgeInsetsMake(0, -147, 0, 30);
    self.tableView.tableFooterView=exitBtn;
    
    
   }


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    static NSString *CellIdentifier = @"Cell";
    
    LeftCell *cell =(LeftCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell =[[LeftCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    switch (indexPath.row) {
        case 0:
            cell.myLabel.text = @"需要帮助";
            
            break;
        case 1:
            cell.myLabel.text = @"我的咨询";
            break;
        case 2:
            
            cell.myLabel.text = @"系统消息";
            break;
        case 3:
            cell.myLabel.text = @"账户管理";
            break;
        case 4:
        {
            cell.myLabel.text = @"安全与隐私";
            NSIndexPath *index=[NSIndexPath indexPathForRow:0 inSection:0];
            [self tableView:self.tableView didSelectRowAtIndexPath:index];
        }
            break;
        default:
            break;
    }
   

    
    return cell;
}





-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44.0;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
             {
                HomeViewController *home = [[HomeViewController alloc] init];
                 
               UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:home];
              [self.mm_drawerController setCenterViewController:nav withCloseAnimation:YES completion:nil];
                 
            }
            
            break;
        case 1:
            
          {
                
                MyInfoViewController *myInfo = [[MyInfoViewController alloc] init];
                UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:myInfo];
                [self.mm_drawerController setCenterViewController:nav withCloseAnimation:YES completion:nil];
            }
            
            break;
        case 2:
            
          {
                SysMsgViewController *sysMsg = [[SysMsgViewController alloc] init];
              UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:sysMsg];
              [self.mm_drawerController setCenterViewController:nav withCloseAnimation:YES completion:nil];

              
            }
           
            
            break;
        case 3:
            
         {
                AccManViewController *acc = [[AccManViewController alloc] init];
             UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:acc];
             [self.mm_drawerController setCenterViewController:nav withCloseAnimation:YES completion:nil];

             
            }
           
        case 4:
            {
                SafeViewController *safe = [[SafeViewController alloc] init];
                UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:safe];
                [self.mm_drawerController setCenterViewController:nav withCloseAnimation:YES completion:nil];
                
            }
                break;
        
            
        default:
            break;
    }

    
    
}


- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
        
    cell.backgroundColor = [UIColor clearColor];
}

/**
 *  退出登录
 */
-(void)exitLogin{
    //发送自动登陆状态通知
    [[NSNotificationCenter defaultCenter] postNotificationName:KNOTIFICATION_LOGOUT object:@NO];

}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];    // Dispose of any resources that can be recreated.
}



@end
