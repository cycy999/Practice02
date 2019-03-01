//
//  AppDelegate.swift
//  Practice02
//
//  Created by 陈岩 on 2019/2/28.
//  Copyright © 2019 陈岩. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15)], for: .normal)
//        UINavigationBar.appearance().barTintColor = UIColor.blue.withAlphaComponent(0.5)
//        UINavigationBar.appearance().titleTextAttributes = [
//            NSAttributedString.Key.foregroundColor: UIColor.white
//        ]
//        UINavigationBar.appearance().tintColor = UIColor.white
        
        window = UIWindow.init(frame: DEVICE_RECT)
        window?.rootViewController = UINavigationController.init(rootViewController: MainTabBarController())
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }


}

