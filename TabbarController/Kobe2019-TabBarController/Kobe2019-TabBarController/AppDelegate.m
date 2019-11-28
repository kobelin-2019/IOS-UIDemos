//
//  AppDelegate.m
//  Kobe2019-TabBarController
//
//  Created by kobelin on 2019/11/28.
//  Copyright © 2019 kobelin. All rights reserved.
//

#import "AppDelegate.h"
#import "KobeTabBarControllerViewController.h"
#import "FirstPageViewController.h"
#import "SecondPageViewController.h"
#import "ThirdPageViewController.h"
@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    KobeTabBarControllerViewController* barContrl = [[KobeTabBarControllerViewController alloc] init];
    
    FirstPageViewController* Page1 = [[FirstPageViewController alloc] init];
    Page1.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:0];
    
    SecondPageViewController* Page2 = [[SecondPageViewController alloc] init];
     Page2.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:1];

    ThirdPageViewController* Page3 = [[ThirdPageViewController alloc] init];
    Page3.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemHistory tag:2];
    
    barContrl.viewControllers = @[Page1,Page2,Page3];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    self.window.rootViewController = barContrl;
    
    return YES;
}

//定义方法
//- (void)setupUI{}
//- (void)addChildViewController:(UIViewController *)childController
//imageNamed:(NSString *)imageName title:(NSString *)title{}
//


//委托方法
//1、视图将要切换时调用，viewController为将要显示的控制器，如果返回的值为NO，则无法点击其它分栏了（viewController指代将要显示的控制器）
//- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
//{
//
//   NSLog(@"被选中的控制器将要显示的按钮");
//   //return NO;不能显示选中的控制器
//   return YES;
//
//}
// //2、视图已经切换后调用，viewController 是已经显示的控制器
//
// - (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
//{
//  NSLog(@"视图显示后调用");
//}
// //3、将要开始自定义item的顺序
//
//- (void)tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers
//{
//
//      NSLog(@"将要开始自定义item时调用");
//
//      NSLog(@"%@",viewControllers);
//}
// //4、将要结束自定义item的顺序
//
// - (void)tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed
//
//{
//
//       NSLog(@"将要结束自定义item时调用");
//
//       NSLog(@"%@",viewControllers);
//}
//




//- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
//    NSLog(@"选中了某个item");
//}
//
//- (void)tabBar:(UITabBar *)tabBar willBeginCustomizingItems:(NSArray<UITabBarItem *> *)items{
//    NSLog(@"将要开始自定制item");
//}
//- (void)tabBar:(UITabBar *)tabBar didBeginCustomizingItems:(NSArray<UITabBarItem *> *)items{
//    NSLog(@"已经开始自定制item");
//}
//- (void)tabBar:(UITabBar *)tabBar willEndCustomizingItems:(NSArray<UITabBarItem *> *)items changed:(BOOL)changed {
//    NSLog(@"将要结束自定制item");
//}
//- (void)tabBar:(UITabBar *)tabBar didEndCustomizingItems:(NSArray<UITabBarItem *> *)items changed:(BOOL)changed{
//    NSLog(@"将要结束自定制item");
//}







//- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
#pragma mark - UISceneSession lifecycle
//    // Called when a new scene session is being created.
//    // Use this method to select a configuration to create the new scene with.
//    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
//}
//
//
//- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
//    // Called when the user discards a scene session.
//    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//}


@end
