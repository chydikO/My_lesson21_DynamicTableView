//
//  EditingListController.swift
//  My_lesson21_DynamicTableView
//
//  Created by OlegChudnovskiy on 08.06.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class EditingListController: TableViewController {

    @IBOutlet private var editButtom: UIBarButtonItem!
    
    override func setup() {
        super.setup()
        title = "Editing List"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource.append(contentsOf: ["1", "2", "3", "4", "5", "6", "7", "8"])
        setButtonTitle()
    }
    
    //MARK: -Action
    @IBAction private func changeTableViewState() {
        if let isEditing = tableView?.isEditing {
             tableView?.setEditing(!isEditing, animated: true)
            setButtonTitle()
        }
    }
    
    //MARK: -UITableViewDataSource
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_id", for: indexPath)
        if let text = dataSource[indexPath.row] as? String {
            cell.textLabel?.text = text
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

//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            dataSource.remove(at: indexPath.row)
//        }
//    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        //change DataSource
        let model = dataSource[sourceIndexPath.row]
        dataSource.remove(at: sourceIndexPath.row)
        dataSource.insert(model, at: destinationIndexPath.row)
    }
    
    private func setButtonTitle() {
        editButtom.title = tableView?.isEditing == false ? "Editing" : "Done"
    }
}
