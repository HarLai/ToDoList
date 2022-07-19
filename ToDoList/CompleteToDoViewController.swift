//
//  CompleteToDoViewController.swift
//  ToDoList
//
//  Created by Jonathan Lai on 7/19/22.
//

import UIKit

class CompleteToDoViewController: UIViewController {

    @IBOutlet weak var nameToDo: UILabel!
    
    var previousVC = ToDoListTableViewController()
    var selectedToDo = ToDo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameToDo.text = selectedToDo.name

        // Do any additional setup after loading the view.
    }
    
    @IBAction func completeButton(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
