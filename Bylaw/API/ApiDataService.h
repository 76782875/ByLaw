//
//  ApiDataService.h
//  Bylaw
//
//  Created by 小热狗 on 16/2/28.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^Completion)(id);
@interface ApiDataService : NSObject
#pragma mark 获取验证码
+(void)postGetScode:(NSString *)params block:(Completion)block;



#pragma mark 注册
+(void)postRegUser:(NSString *)params block:(Completion)block;


#pragma mark 登录
+(void)postLogin:(NSString *)params block:(Completion)block;


#pragma mark 获取城市列表
+(void)postGetAreas:(NSString *)params block:(Completion)block;

#pragma mark 查询用户积分
+(void)postGetScore:(NSString *)params block:(Completion)block;

#pragma mark 建议反馈接口
+(void)postSuggest:(NSString *)params block:(Completion)block;

#pragma mark 修改登录密码
+(void)postModifyPass:(NSString *)params block:(Completion)block;

#pragma mark 接单列表
+(void)postGetList:(NSString *)params block:(Completion)block;


#pragma mark 帮我送第一页
+(void)postHelpSend:(NSString *)params block:(Completion)block;



#pragma mark 帮我送第二页
+(void)postHelpSendTwo:(NSString *)params block:(Completion)block;


#pragma mark 帮我买
+(void)postHelpBuy:(NSString *)params block:(Completion)block;

#pragma mark 申请快递员
+(void)postApply:(NSString *)params block:(Completion)block;


#pragma mark 修改昵称
+(void)postModifyNick:(NSString *)params block:(Completion)block;

#pragma mark 修改头像
+(void)postModifyHead:(NSString *)params block:(Completion)block;



#pragma mark 我的发单
+(void)postMySend:(NSString *)params block:(Completion)block;


#pragma mark 初始化用户数据
+(void)postUserInit:(NSString *)params block:(Completion)block;

#pragma mark 消息
+(void)postMessage:(NSString *)params block:(Completion)block;
@end
