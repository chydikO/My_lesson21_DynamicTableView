//
//  DropDownListController.swift
//  My_lesson21_DynamicTableView
//
//  Created by OlegChudnovskiy on 08.06.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class DropDownListController: TableViewController {

    override func setup() {
        super.setup()
        let _title = "Drop Down Section"
        title = _title
        tabBarItem = UITabBarItem(title: "Drop Down", image: UIImage(), tag: 0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
