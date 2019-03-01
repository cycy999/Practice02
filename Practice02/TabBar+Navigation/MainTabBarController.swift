//
//  MainTabBarController.swift
//  Practice02
//
//  Created by 陈岩 on 2019/3/1.
//  Copyright © 2019 陈岩. All rights reserved.
//

import UIKit

class MainTabBarController: BaseTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let home = HomeViewController()
        let homeNav = initNaviController("首页", controller: home, image: "common_contact_n", selectedImage: "common_contact_s")
        homeNav.tabBarItem.tag = 0
        
        let second = SecondViewController()
        let secondNav = initNaviController("第二页", controller: second, image: "common_founder_n", selectedImage: "common_founder_s")
        secondNav.tabBarItem.tag = 1
        
        let third = ThirdViewController()
        let thirdNav = initNaviController("第三页", controller: third, image: "common_contact_n", selectedImage: "common_contact_s")
        thirdNav.tabBarItem.tag = 2
        
        let mine = MineViewController()
        let mineNav = initNaviController("我的", controller: mine, image: "common_me_n", selectedImage: "common_me_s")
        mineNav.tabBarItem.tag = 3
        
        viewControllers = [homeNav, secondNav, thirdNav, mineNav]
    }
    
    func initNaviController(_ title: String, controller: UIViewController, image: String = "", selectedImage: String = "") -> BaseNavigationController {
        controller.title = title
        controller.tabBarItem = UITabBarItem(
            title: title,
            image: UIImage(named: image)?.withRenderingMode(.alwaysOriginal),
            selectedImage: UIImage(named: selectedImage)?.withRenderingMode(.alwaysOriginal))
        
        controller.tabBarItem.setTitleTextAttributes([
            NSAttributedString.Key.foregroundColor: UIColor.black
            ], for: .normal)
        
        controller.tabBarItem.setTitleTextAttributes([
            NSAttributedString.Key.foregroundColor: UIColor.fontGreenColor()
            ], for: .selected)
        
        controller.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -2)
        let nav = BaseNavigationController.init(rootViewController: controller)
        nav.view.backgroundColor = UIColor.white
        nav.navigationBar.barStyle = .black
        return nav
    }

}
