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
        tabBarItem = UITabBarItem(title: _title, image: nil, tag: 0)
        title = _title
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
