//
//  ApiDataService.m
//  Bylaw
//
//  Created by 小热狗 on 16/2/28.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#import "ApiDataService.h"
#import "ApiRequest.h"
#import "ApiList.h"
@implementation ApiDataService
#pragma mark 获取验证码
+(void)postGetScode:(NSString *)params block:(Completion)block{
    [self startRequest:params url:Get_Scode_URL  isGet:NO block:block];
    
    
}

#pragma mark 注册
+(void)postRegUser:(NSString *)params block:(Completion)block{
    
    [self startRequest:params url:RegUser_URL  isGet:NO block:block];
}

#pragma mark 登录
+(void)postLogin:(NSString *)params block:(Completion)block{
    
    [self startRequest:params url:Login_URL  isGet:NO block:block];
    
    
    
}



#pragma mark 获取城市列表
+(void)postGetAreas:(NSString *)params block:(Completion)block{
    [self startRequest:params url:GetAreas_URL  isGet:NO  block:block];
    
    
}


#pragma mark 查询用户积分
+(void)postGetScore:(NSString *)params block:(Completion)block{
    [self startRequest:params url:GetScore_URL  isGet:NO  block:block];
}

#pragma mark 建议反馈接口
+(void)postSuggest:(NSString *)params block:(Completion)block{
    [self startRequest:params url:Suggest_URL  isGet:NO  block:block];
}


#pragma mark 修改登录密码
+(void)postModifyPass:(NSString *)params block:(Completion)block{
    [self startRequest:params url:ModifyPass_URL  isGet:NO  block:block];
    
}

#pragma mark 接单列表
+(void)postGetList:(NSString *)params block:(Completion)block{
    
    [self startRequest:params url:GetList_URL  isGet:NO  block:block];
    
}


#pragma mark 帮我送第一页
+(void)postHelpSend:(NSString *)params block:(Completion)block{
    
    [self startRequest:params url:HelpSend_URL  isGet:NO  block:block];
    
}


#pragma mark 帮我买
+(void)postHelpBuy:(NSString *)params block:(Completion)block{
    [self startRequest:params url:HelpBuy_URL  isGet:NO  block:block];
    
    
}


#pragma mark 申请快递员
+(void)postApply:(NSString *)params block:(Completion)block{
    
    [self startRequest:params url:Apply_URL  isGet:NO  block:block];
}


#pragma mark 修改昵称
+(void)postModifyNick:(NSString *)params block:(Completion)block{
    
    [self startRequest:params url:ModifyNick_URL  isGet:NO  block:block];
    
}

#pragma mark 修改头像
+(void)postModifyHead:(NSString *)params block:(Completion)block{
    [self startRequest:params url:ModifyHead_URL  isGet:NO  block:block];
    
}
#pragma mark 我的发单
+(void)postMySend:(NSString *)params block:(Completion)block{
    [self startRequest:params url:MySend_URL  isGet:NO  block:block];
    
}


#pragma mark 初始化用户数据
+(void)postUserInit:(NSString *)params block:(Completion)block{
    [self startRequest:params url:UserInit_URL  isGet:NO  block:block];
}

#pragma mark 消息
+(void)postMessage:(NSString *)params block:(Completion)block{
    
    
    [self startRequest:params url:Message_URL  isGet:NO  block:block];
    
}

+(void)startRequest:(NSString *)params url:(NSString *)urlString isGet:(BOOL)isGet block:(Completion)block
{
    ApiRequest *request=[ApiRequest requestWithURL:[NSURL URLWithString:urlString]];
    
    if (isGet) {
        [request setHTTPMethod:@"GET"];
    }else{
        [request setHTTPMethod:@"POST"];
        //设置请求体
        //        NSString *returnString=[params JSONString];
        //        NSString *postStr=[NSString stringWithFormat:@"%@",returnString];
        //
        NSData *postData = [params dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
        [request setHTTPBody:postData];
        
    }
    
    [request setTimeoutInterval:10];
    
    request.block=^(NSData *data){
        id ret=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        block(ret);
    };
    
    [request startAsynrc];
}

@end
