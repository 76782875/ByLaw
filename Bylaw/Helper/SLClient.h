//
//  SLClient.h
//  Bylaw
//
//  Created by 小热狗 on 16/3/6.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserModel.h"
@interface SLClient : NSObject


/**
*  获取实例
*/
+ (instancetype)sharedClient;

/**
 *  版本号
 */
@property (nonatomic, strong, readonly) NSString *version;
/**
 *  个人信息
 */
@property (nonatomic, strong) UserModel *user;

/**
 *  当前登录账号
 */
@property (nonatomic, strong, readonly) NSString *currentUsername;


/**
 *  判断是否登录
 */
@property(nonatomic,strong)NSString *isLogin;
@end
