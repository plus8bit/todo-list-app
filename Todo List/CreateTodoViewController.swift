//
//  CreateTodoViewController.swift
//  Todo List
//
//  Created by Nick on 01/04/2019.
//  Copyright © 2019 Nick Danilov. All rights reserved.
//

import UIKit

class CreateTodoViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var toDoTableVC: ToDoTableViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addTodo(_ sender: Any) {
        let newToDo = ToDo()
        newToDo.important = importantSwitch.isOn
        if let name = nameTextField.text {
            newToDo.name = name
        }
        toDoTableVC?.toDos.append(newToDo)
        toDoTableVC?.tableView.reloadData()
        navigationController?.popViewController(animated: true)
        
    }
    


}
