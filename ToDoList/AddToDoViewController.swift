//
//  AddToDoViewController.swift
//  ToDoList
//
//  Created by Jonathan Lai on 7/19/22.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previousVC = ToDoListTableViewController()

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
         let toDo = ToDo()

         if let titleText = titleTextField.text {
             toDo.name = titleText
             toDo.important = importantSwitch.isOn
         }
        
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)

    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        
//    }

}
