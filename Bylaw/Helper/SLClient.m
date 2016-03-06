//
//  SLClient.m
//  Bylaw
//
//  Created by 小热狗 on 16/3/6.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#import "SLClient.h"

@implementation SLClient
+ (instancetype)sharedClient
{
    static SLClient *userData=nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        userData = [[SLClient alloc]init];
            
    });
    return userData;
}

@end
