//
//  AppDelegate.swift
//  proba
//
//  Created by Бардеева Надежда on 07.04.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds) // bounds - высота и ширина нашего экрана
        window?.rootViewController = MainTabBarViewController()// первый вью контроллер, который отобразится
        window?.makeKeyAndVisible() // для того, чтобы он появился на экране
        return true
    }

}

