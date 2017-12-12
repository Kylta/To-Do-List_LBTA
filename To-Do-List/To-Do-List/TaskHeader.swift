//
//  TaskHeader.swift
//  To-do-List
//
//  Created by Christophe Bugnon on 12/12/2017.
//  Copyright © 2017 Christophe Bugnon. All rights reserved.
//

import UIKit

// Class create for use on CollectionView register
class TaskHeader: BaseCell {

    var collectionViewController: CollectionViewController?
    
    // For user enter a name inside this text field
    let taskNameTextField: UITextField = {
       let textField = UITextField()
        textField.text = "Enter Task Name"
        textField.textColor = UIColor.lightGray
        textField.clearsOnBeginEditing = true
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let addTaskButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Add Task", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func setupViews() {
        
        addSubview(taskNameTextField)
        addSubview(addTaskButton)
        
        // Target for change text color when edited
        taskNameTextField.addTarget(self, action: #selector(changeColor(sender:)), for: .editingChanged)
        addTaskButton.addTarget(self, action: #selector(addTask(sender:)), for: .touchUpInside)
        
        
        // Constraint for cells + header
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-8-[v0]-[v1(80)]-8-|", options: [], metrics: nil, views: ["v0": taskNameTextField, "v1": addTaskButton]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-24-[v0]-24-|", options: [], metrics: nil, views: ["v0": taskNameTextField]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-8-[v0]-8-|", options: [], metrics: nil, views: ["v0": addTaskButton]))

    }
    
    @objc func changeColor(sender: UITextField) {
        taskNameTextField.textColor = .black
    }
    
    // Put the name enter in taskNameTextField in the array Tasks in class CollectionViewController
    @objc func addTask(sender: UIButton) {
        collectionViewController?.addNewTask(taskName: taskNameTextField.text!)
        taskNameTextField.text = "Enter New Task"
        taskNameTextField.textColor = UIColor.lightGray
    }
}
