//
//  AppDelegate.swift
//  ProjectPractice
//
//  Created by Jerry092383 on 2021/8/3.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let mainTabBarController = MainTabBarController()
        let mainNavigationController = MainNavigationController()

        // View Controller
        let mainViewConrtoller = MainViewController()
        let secondaryViewController = SecondaryViewController()
        let thirdViewController = ThirdViewController()
        
        mainViewConrtoller.title = "First App"
        mainNavigationController.title = "Main"
        secondaryViewController.title = "Secondary"
        thirdViewController.title = "Animal"
        
        mainNavigationController.viewControllers = [mainViewConrtoller]
        mainTabBarController.viewControllers = [mainNavigationController, secondaryViewController, thirdViewController]
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = mainTabBarController
        
        // Override point for customization after application launch.
        return true
    }
}

