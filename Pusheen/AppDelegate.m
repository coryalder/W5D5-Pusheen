//
//  AppDelegate.m
//  Pusheen
//
//  Created by Cory Alder on 2015-07-09.
//  Copyright (c) 2015 Cory Alder. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    return YES;
}


-(void)application:(UIApplication *)application didRegisterUserNotificationSettings:(UIUserNotificationSettings *)notificationSettings {
//    
//    UILocalNotification *local = [[UILocalNotification alloc] init];
//    
//    local.fireDate = [NSDate dateWithTimeIntervalSinceNow:10];
//    
//    local.alertTitle = @"Pusheen!";
//    local.alertBody = @"Pusheen says hi!";
//    local.applicationIconBadgeNumber = 10;
//    
//    [[UIApplication sharedApplication] scheduleLocalNotification:local];
//
    
    
    [[UIApplication sharedApplication] registerForRemoteNotifications];
    
}

-(void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {

    NSLog(@"device token is %@", deviceToken);

}

-(void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error {

    NSLog(@"registration failed %@", error);


}

-(void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
    NSLog(@"recieved remote notificaiton %@", userInfo);

}


@end
