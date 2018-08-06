//
//  CompleteToDoViewController.swift
//  ToDo List
//
//  Created by Brandon Hensley on 8/5/18.
//  Copyright © 2018 Brandon Hensley. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()
    
    var selectedToDo : ToDoCoreData?

    @IBOutlet weak var itemText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemText.text = selectedToDo?.name

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func completePressed(_ sender: Any) {
        /*
        previousVC.toDos = previousVC.toDos.filter() { $0 !== selectedToDo}
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
        */
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let theToDo = selectedToDo {
                context.delete(theToDo)
                navigationController?.popViewController(animated: true)
            }
            
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
