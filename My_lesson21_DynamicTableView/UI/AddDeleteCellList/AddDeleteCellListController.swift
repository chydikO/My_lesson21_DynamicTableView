//
//  AddDeleteCellListController.swift
//  My_lesson21_DynamicTableView
//
//  Created by OlegChudnovskiy on 08.06.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class AddDeleteCellListController: TableViewController {

    override func setup() {
        super.setup()
        title = "Add / Delete Cell"
        tabBarItem = UITabBarItem(title: "Add/Delete", image: UIImage(), tag: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource.append(contentsOf: [Int.random(in: 0...100),
                                       Int.random(in: 0...100),
                                       Int.random(in: 0...100)])
    }
    
    //MARK: - Actions
    @IBAction private func AddButtonClicked() {
        
    }
    
    //MARK: -UITableViewDataSource
       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "cell_id", for: indexPath)
           if let number = dataSource[indexPath.row] as? Int {
               cell.textLabel?.text = String(number)
           }
           return cell
       }
       //---------------------Remove red buttom while tableView editing
       func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
           return .none
       }
       
       func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
           return false
       }
       //---------------------Remove red buttom while tableView editing
}
