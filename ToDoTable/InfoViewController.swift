//
//  InfoViewController.swift
//  ToDoTable
//
//  Created by Vinod Ralh on 1/2/15.
//  Copyright (c) 2015 Vinod Ralh. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController, UITextFieldDelegate {
    
    var currentToDo : ToDo?

    @IBOutlet weak var shortNameField: UITextField!
    @IBOutlet weak var descriptionField: UITextField!
    @IBOutlet weak var priorityField: UITextField!
    @IBOutlet weak var completedField: UITextField!
    @IBOutlet weak var startDateField: UITextField!
    @IBOutlet weak var endDataField: UITextField!
    @IBOutlet weak var notesField: UITextView!
    
    @IBAction func shortNameUpdate(sender: AnyObject) {
        currentToDo!.shortName = shortNameField.text
    }
    
    
    @IBAction func submitButton(sender: AnyObject) {
        currentToDo!.shortName = shortNameField.text
        currentToDo!.description = descriptionField.text
        currentToDo!.priority = priorityField.text
        currentToDo!.completed = completedField.text
        currentToDo!.startDate = startDateField.text
        currentToDo!.endDate = endDataField.text
        currentToDo!.notes = notesField.text
    }
    

    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shortNameField.text = currentToDo!.shortName
        descriptionField.text = currentToDo!.description
        priorityField.text = currentToDo!.priority
        completedField.text = currentToDo!.completed
        startDateField.text = currentToDo!.startDate
        endDataField.text = currentToDo!.endDate
        notesField.text = currentToDo!.notes
        

        // Do any additional setup after loading the view.
    }

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    
        // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SaveToDo" {
            currentToDo = ToDo(shortName: shortNameField.text, description: descriptionField.text, priority: priorityField.text, completed: completedField.text, startDate: startDateField.text, endDate: endDataField.text, notes: notesField.text)
            
        }
    }
}
