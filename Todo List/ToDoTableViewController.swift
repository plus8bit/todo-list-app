//
//  ToDoTableViewController.swift
//  Todo List
//
//  Created by Nick on 31/03/2019.
//  Copyright © 2019 Nick Danilov. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var toDos: [ToDo] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let todo1 = ToDo()
        todo1.name = "Walk the dog"
        todo1.important = true
        
        let todo2 = ToDo()
        todo2.name = "Buy cookies"
        todo2.important = false
        
        toDos = [todo1, todo2]
        
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return toDos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let currentToDo = toDos[indexPath.row]
        
        if currentToDo.important {
            // !
            cell.textLabel?.text = "🚀 " + currentToDo.name
        } else {
            // Normal
            cell.textLabel?.text = currentToDo.name
        }

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let createVC = segue.destination as? CreateTodoViewController {
            createVC.toDoTableVC = self
        }
    }

}
