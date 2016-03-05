//
//  CancelViewController.m
//  Bylaw
//
//  Created by 小热狗 on 16/3/5.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#import "CancelViewController.h"
#import "UIViewController+CWPopup.h"
@interface CancelViewController ()

@end

@implementation CancelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)cancelClick:(UIButton *)sender {
    
    if (self.popupViewController != nil) {
        [self dismissPopupViewControllerAnimated:YES completion:^{
            NSLog(@"popup view dismissed");
        }];
    }

    
}

- (IBAction)cancelAskClick:(UIButton *)sender {
    
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}
@end
