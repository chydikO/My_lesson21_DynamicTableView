//
//  TabBarController.swift
//  My_lesson21_DynamicTableView
//
//  Created by OlegChudnovskiy on 08.06.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller1 = storyboard.instantiateViewController(withIdentifier: "EditingListController")
        let controller2 = storyboard.instantiateViewController(withIdentifier: "AddDeleteCellListController")
        let controller3 = storyboard.instantiateViewController(withIdentifier: "DropDownListController")
        
        setViewControllers([NavigationController(rootViewController: controller1),
                            NavigationController(rootViewController: controller2),
                            NavigationController(rootViewController: controller3)], animated: false)
        selectedIndex = 2
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .all
    }
}
