//
//  ApiList.h
//  Bylaw
//
//  Created by 小热狗 on 16/2/28.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ApiList : NSObject
#define SERVER   @"http://27.54.241.61/json/"



#pragma mark 获取验证码

#define Get_Scode @"getScode"
#define Get_Scode_URL [NSString stringWithFormat:@"%@%@",SERVER,Get_Scode]



#pragma mark 登陆
#define Login @"user/loginUser"
#define Login_URL [NSString stringWithFormat:@"%@%@",SERVER,Login]

#pragma mark 注册

#define RegUser @"user/createUser"
#define RegUser_URL [NSString stringWithFormat:@"%@%@",SERVER,RegUser]



#pragma mark 获取城市列表
#define GetAreas @"other/getAreas"
#define GetAreas_URL [NSString stringWithFormat:@"%@%@",SERVER,GetAreas]

#pragma mark 查询用户积分
#define GetScore @"score/getScore"
#define GetScore_URL [NSString stringWithFormat:@"%@%@",SERVER,GetScore]


#pragma mark 建议反馈接口
#define Suggest @"msg/save"
#define Suggest_URL [NSString stringWithFormat:@"%@%@",SERVER,Suggest]


#pragma mark 修改登录密码
#define ModifyPass @"user/changePassword"
#define ModifyPass_URL [NSString stringWithFormat:@"%@%@",SERVER,ModifyPass]


#pragma mark 接单列表
#define GetList @"order/getList"
#define GetList_URL [NSString stringWithFormat:@"%@%@",SERVER,GetList]


#pragma mark 帮我送第一页
#define HelpSend @"wares/send"
#define HelpSend_URL [NSString stringWithFormat:@"%@%@",SERVER,HelpSend]


#pragma mark 帮我送第二页
#define HelpSendTwo @"wares/sendTwo"
#define HelpSendTwo_URL [NSString stringWithFormat:@"%@%@",SERVER,HelpSendTwo]

#pragma mark 帮我买
#define HelpBuy @"wares/buy"
#define HelpBuy_URL [NSString stringWithFormat:@"%@%@",SERVER,HelpBuy]


#pragma mark 申请快递员
#define Apply @"user/apply"
#define Apply_URL [NSString stringWithFormat:@"%@%@",SERVER,Apply]



#pragma mark 修改昵称
#define ModifyNick @"user/changeNN"
#define ModifyNick_URL [NSString stringWithFormat:@"%@%@",SERVER,ModifyNick]



#pragma mark 修改头像
#define ModifyHead @"user/updateHeadImg"
#define ModifyHead_URL [NSString stringWithFormat:@"%@%@",SERVER,ModifyHead]


#pragma mark 我的发单
#define MySend @"wares/mySend"
#define MySend_URL [NSString stringWithFormat:@"%@%@",SERVER,MySend]

#pragma mark 初始化用户数据
#define UserInit @"user/init"
#define UserInit_URL [NSString stringWithFormat:@"%@%@",SERVER,UserInit]


#pragma mark 消息
#define Message @"other/message"
#define Message_URL [NSString stringWithFormat:@"%@%@",SERVER,Message]



@end
