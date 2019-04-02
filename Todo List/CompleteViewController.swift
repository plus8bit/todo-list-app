//
//  CompleteViewController.swift
//  Todo List
//
//  Created by Nick on 02/04/2019.
//  Copyright © 2019 Nick Danilov. All rights reserved.
//

import UIKit

class CompleteViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var todo = ToDo()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = todo.name
    }
    
    @IBAction func completeButton(_ sender: Any) {
        
    }
    

}
