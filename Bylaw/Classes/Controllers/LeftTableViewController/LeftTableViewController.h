//
//  LeftTableViewController.h
//  Bylaw
//
//  Created by 小热狗 on 16/2/28.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeftTableViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UITableView * tableView;

@end
