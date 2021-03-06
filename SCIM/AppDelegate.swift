//
//  AppDelegate.swift
//  SCIM
//
//  Created by yannian liu on 16/2/1.
//  Copyright © 2016年 yannian liu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // *** navigativeBar backgroud colour ***
        UINavigationBar.appearance().barTintColor = UIColor(red:60.0/255.0, green:175.0/255.0, blue:240.0/255.0, alpha:1)

        // *** navigativeBar title colour ***
        UINavigationBar.appearance().titleTextAttributes = [NSFontAttributeName: UIFont(name:"TrebuchetMS-Bold", size:20)!,NSForegroundColorAttributeName: UIColor.white]
        
        // *** navigativeBar back button tint Colour ***
        UINavigationBar.appearance().tintColor = UIColor.white
        UIBarButtonItem.appearance().setTitleTextAttributes([NSFontAttributeName: UIFont(name:"Trebuchet MS", size:12)!], for: UIControlState())

        
        UITabBar.appearance().tintColor = UIColor(red:60.0/255.0, green:175.0/255.0, blue:240.0/255.0, alpha:1)
        UITabBarItem.appearance().setTitleTextAttributes([NSFontAttributeName: UIFont(name:"Trebuchet MS", size:12)!], for: UIControlState())
        
        let notificationTypes : UIUserNotificationType = [.alert, .badge, .sound]
        let notificationSettings : UIUserNotificationSettings = UIUserNotificationSettings(types: notificationTypes, categories: nil)
        UIApplication.shared.registerUserNotificationSettings(notificationSettings)

        
        return true
        
        
    }
    
    
    
    //remote notification  ///////////
    func application(_ application: UIApplication, didRegister notificationSettings: UIUserNotificationSettings)
    {
        UIApplication.shared.registerForRemoteNotifications()
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        
        print(deviceToken)
    }
    
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        print(error.localizedDescription)
    }
    

    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
    }
    
    
    //remote  notification ///////////
    
    
    
    

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        application.cancelAllLocalNotifications()
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
       // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

   
}

