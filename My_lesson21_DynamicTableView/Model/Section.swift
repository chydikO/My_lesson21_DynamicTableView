//
//  Section.swift
//  My_lesson21_DynamicTableView
//
//  Created by Олег Чудновский on 25.06.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import Foundation

class Section {
    let name: String
    var isExpended = false
    let data: [Int]
    
    init(data: [Int], name: String) {
        self.data = data
        self.name = name
    }
}
