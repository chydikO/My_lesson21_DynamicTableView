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
        
        //target - это тот объект у которого #selector будет вызываться
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(AddButtonClicked))
        self.navigationItem.rightBarButtonItem?.tintColor = .black
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Clear", style: .done, target: self, action: #selector(ClearButtonClicked))
        self.navigationItem.leftBarButtonItem?.tintColor = .black
    }
    
    //MARK: - Actions
    @objc private func AddButtonClicked() {
        let insertIndex = 0
        dataSource.insert(Int.random(in: 0...100), at: insertIndex)

        // 1
        //tableView?.reloadData()
        
        // 2
        let indexPath = IndexPath(row: insertIndex, section: 0)
        tableView?.insertRows(at: [indexPath], with: .automatic)
    }
    
    @objc private func ClearButtonClicked() {
        dataSource.removeAll()
        tableView?.reloadData()
    }
    
    //MARK: -UITableViewDataSource
       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "cell_id", for: indexPath)
           if let number = dataSource[indexPath.row] as? Int {
               cell.textLabel?.text = String(number)
           }
           return cell
       }
    
    //MARK - Delete cell from tableView
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            dataSource.remove(at: indexPath.row)
            //1.
            //tableView.reloadData()
            
            //2
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}
