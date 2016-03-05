//
//  ApiRequest.h
//  Bylaw
//
//  Created by 小热狗 on 16/2/28.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^FinishLoadBlock)(NSData *);
@interface ApiRequest : NSMutableURLRequest<NSURLConnectionDataDelegate>
@property (nonatomic,retain) NSMutableData *data;
@property (nonatomic,retain) NSURLConnection *connection;
@property (nonatomic,copy) FinishLoadBlock block;

//开始异步请求
-(void)startAsynrc;

//取消请求
-(void)cancel;
@end
