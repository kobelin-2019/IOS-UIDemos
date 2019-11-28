//
//  AppDelegate.m
//  Kobe2019-UINavigationController
//
//  Created by kobelin on 2019/11/28.
//  Copyright © 2019 kobelin. All rights reserved.
//

#import "AppDelegate.h"
#import "MYNavigationController.h"
#import "Page1ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    MYNavigationController *nvController = [[MYNavigationController alloc] init];
    nvController.delegate = self;
    
    Page1ViewController *mainctrl = [[Page1ViewController alloc] init];
    [nvController pushViewController:mainctrl animated:YES];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    self.window.rootViewController = nvController;
    return YES;
}


#pragma mark - UISceneSession lifecycle
//
//
//- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
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
//

@end
