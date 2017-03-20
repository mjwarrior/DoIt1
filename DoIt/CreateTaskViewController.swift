//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Marc Streeter on 3/17/17.
//  Copyright © 2017 Developer Warriors. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    var previousVC = TasksViewController()
   
    @IBOutlet weak var importantSwitch: UISwitch!
    
    @IBOutlet weak var taskNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   
    
    
    @IBAction func addTapped(_ sender: Any) {
    //Create a Task from the outlet information
       let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
    
        //Add task to the array in previous view controller
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    
    
    
    
    }

}
