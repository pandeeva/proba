//
//  MainTabBarViewController.swift
//  proba
//
//  Created by Бардеева Надежда on 07.04.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    let firstVC = ViewController()
    let secondVC = SecondViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
      
    }

    private func setupControllers() {
        firstVC.tabBarItem.title = "Первый"
        firstVC.tabBarItem.image = UIImage(named: "185095")

        let navController = UINavigationController(rootViewController: secondVC)
        secondVC.tabBarItem.title = "Второй"
        secondVC.tabBarItem.image = UIImage(systemName: "bolt")
        secondVC.navigationItem.title = "Второй VC"

        viewControllers = [firstVC, navController]//сколько вью контроллеров добавим в этот массив, столько их и будет отображаться


    }
}
