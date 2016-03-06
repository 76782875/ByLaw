//
//  AppDelegate.m
//  Bylaw
//
//  Created by 小热狗 on 16/2/27.
//  Copyright © 2016年 小热狗. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"
#import "LeftTableViewController.h"
#import "MMDrawerController.h"
#import "MMDrawerVisualState.h"
#import "LoginViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    
#pragma mark 键盘自动布局
    [self autoKeyboard];
    
   
#pragma mark 监听网络状态
    [MHAsiNetworkHandler startMonitoring];
    
    
#pragma mark 注册登录状态监听
    [self loginRegisterListen];
    
 
 #pragma mark 判断是否登录
    [self isLogin];
    
    
    
    
    
    
    
      // Override point for customization after application launch.
    
    return YES;
   
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}





/**
 *  键盘自动布局
 */
-(void)autoKeyboard{
    
    //Enabling keyboard manager
    [[IQKeyboardManager sharedManager] setEnable:YES];
    
    [[IQKeyboardManager sharedManager] setKeyboardDistanceFromTextField:0];
    //Enabling autoToolbar behaviour. If It is set to NO. You have to manually create UIToolbar for keyboard.
    
    
    [[IQKeyboardManager sharedManager] setEnableAutoToolbar:YES];
    
    //Setting toolbar behavious to IQAutoToolbarBySubviews. Set it to IQAutoToolbarByTag to manage previous/next according to UITextField's tag property in increasing order.
    [[IQKeyboardManager sharedManager] setToolbarManageBehaviour:IQAutoToolbarBySubviews];
    
    //Resign textField if touched outside of UITextField/UITextView.
    [[IQKeyboardManager sharedManager] setShouldResignOnTouchOutside:YES];
    
    //Giving permission to modify TextView's frame
    [[IQKeyboardManager sharedManager] setCanAdjustTextView:YES];
    
    
}

/**
 *  注册登录状态监听
 */
-(void)loginRegisterListen{
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(loginStateChange:)
                                                 name:KNOTIFICATION_LOGIN  object:@YES];


    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(loginStateChange:)
                                                 name:KNOTIFICATION_LOGOUT  object:@NO];

}


/**
 *  注册登录状态监听事件
 */
- (void)loginStateChange:(NSNotification *)notification
{
    
     BOOL loginSuccess = [notification.object boolValue];
    if (loginSuccess)
    {
    //登录成功
    [self saveLoginInfo];//保存登录数据到本地
    
    }else{
    //退出
        [self removLoginInfo];//移除本地数据
    
    }
    
}


/**
 *  保存登录数据到本地
 */
-(void)saveLoginInfo{
    //获取userDefault单例
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    //登陆成功后把用户名和密码存储到UserDefault
    [userDefaults setObject:[SLClient sharedClient].user.username forKey:@"name"];
    [userDefaults setObject:[SLClient sharedClient].user.password forKey:@"password"];
    [userDefaults setObject:@"YES" forKey:@"loginState"];
    [userDefaults synchronize];
    [self isLogin];

}


/**
 *  移除本地数据
 */
-(void)removLoginInfo{
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    //移除UserDefaults中存储的用户信息
    [userDefaults removeObjectForKey:@"name"];
    [userDefaults removeObjectForKey:@"password"];
    [userDefaults removeObjectForKey:@"loginState"];
    [userDefaults synchronize];
    [self isLogin];

    
}
/**
 *  判断是否登录
 */
-(void)isLogin{
    
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    NSString *isLogin= [userDefault objectForKey:@"loginState"];
    
    UIViewController *rootController = nil;
    if ([isLogin isEqualToString:@"YES"]) {
      // 已经登录
        if (self.drawerController==nil) {
            UIViewController * leftSideDrawerViewController = [[LeftTableViewController alloc] init];
            
            UIViewController * centerViewController = [[HomeViewController alloc]init];
            
            UINavigationController * navigationController = [[UINavigationController alloc] initWithRootViewController:centerViewController];
            
            self.drawerController = [[MMDrawerController alloc]
                                     initWithCenterViewController:navigationController
                                     leftDrawerViewController:leftSideDrawerViewController
                                     rightDrawerViewController:nil];
            [self.drawerController setMaximumRightDrawerWidth:180.0];
            [self.drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
            [self.drawerController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
            rootController=self.drawerController;
              NSLog(@"加载主页");
        }else{
            
            rootController=self.drawerController;
            NSLog(@"加载登录页");
            
        }
        
        
    
    
    
    }else{
        //未登录
        self.drawerController = nil;
        LoginViewController *loginVC=[LoginViewController new];
        rootController=loginVC;
    
    }
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window setRootViewController:rootController];
    self.window.backgroundColor =BACKGROUND_COLOR;
    [self.window makeKeyAndVisible];
    
    
}

@end
