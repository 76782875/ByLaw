//
//  BaseAPIList.h
//  Bylaw
//
//  Created by 小热狗 on 16/3/6.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#ifndef BaseAPIList_h
#define BaseAPIList_h

#define SeviceURL           @"http://121.40.99.120:8280" //正式环境



#define POST_INTERFACE(API)    [NSString stringWithFormat:@"%@/json/%@",SeviceURL,API]




#pragma mark 用户登录
#define LoginUrl POST_INTERFACE(@"loginUsercfg.action")


#pragma mark 发送验证码
#define SendMsgUrl @"sendMessage.action"

#pragma mark 图片上传
#define FileUploadUrl @"uploadMany.zengxin"

#pragma mark 注册
#define RegisterUrl @"addUsercfg.action"

#pragma mark 用户列表
#define UserListUrl @"listUsercfg.action"


#pragma mark 发布咨询
#define AddConsultUrl @"addRequirementInfoTbl.action"


#pragma mark 咨询列表
#define ConsultListUrl @"listRequirementInfoTbl.action"

#pragma mark 用户解约
#define UserRelieveUrl @"relieveRequirement.action"


#pragma mark 单个咨询问题详情
#define ConsultDetailUrl @"findRequirementInfoTbl.action"


#pragma mark 咨询类型列表(资料库列表)
#define ConsultTypeListUrl @"listRequirementTypeTbl.action"


#endif /* BaseAPIList_h */
