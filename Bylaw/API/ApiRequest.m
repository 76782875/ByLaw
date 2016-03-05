//
//  ApiRequest.m
//  Bylaw
//
//  Created by 小热狗 on 16/2/28.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#import "ApiRequest.h"

@implementation ApiRequest
//开始异步请求
-(void)startAsynrc
{
    self.data=[NSMutableData data];
    
    //发送请求
    self.connection = [NSURLConnection connectionWithRequest:self delegate:self];
    
   
}

//取消请求
-(void)cancel
{
    [self.connection cancel];
}

#pragma mark - NSURLConnection delegate

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [self.data appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    self.block(_data);
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"requestError" object:nil userInfo:nil];
    
    
    
}

@end
