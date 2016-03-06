//
//  UserModel.h
//  Bylaw
//
//  Created by 小热狗 on 16/3/6.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface UserModel : NSObject

@property(nonatomic,strong)NSString *addr;//用户地址
@property(nonatomic,strong)NSString *birthday;//生日
@property(nonatomic,strong)NSString *msgUserId;//聊天表id
@property(nonatomic,strong)NSString *password;//密码
@property(nonatomic,strong)NSString *pic;//头像
@property(nonatomic,strong)NSString *realname;//昵称
@property(nonatomic,strong)NSString *email;//邮箱
@property(nonatomic,strong)NSString *sex;//性别 (0 ： 女，1 ：男)
@property(nonatomic,strong)NSString *tel;//电话
@property(nonatomic,strong)NSString *userid;//用户id
@property(nonatomic,strong)NSString *username;//用户名
@property(nonatomic,strong)NSString *companyFlag;//企业/个人 (1 ：企业 ， 0 ： 个人)




@end
