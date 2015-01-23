//
//  ToDoTableViewController.swift
//  ToDoTable
//
//  Created by Vinod Ralh on 1/2/15.
//  Copyright (c) 2015 Vinod Ralh. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController  {
    
    var toDoListActive = [ToDo]()
    var toDoListCompleted = [ToDo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        generateSampleData(&toDoListActive, &toDoListCompleted)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelToDoViewController(segue:UIStoryboardSegue) {
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    @IBAction func editToDoViewController(sender: UIBarButtonItem) {
        if (self.tableView.editing) {
            sender.title = "Edit"
            self.tableView.setEditing(false, animated: true)
        } else {
            sender.title = "Done"
            self.tableView.setEditing(true, animated: true)
        }    }
    
    @IBAction func saveToDoViewController(segue:UIStoryboardSegue) {
        
        let toDoViewController = segue.sourceViewController as InfoViewController
        var index = self.tableView.indexPathForSelectedRow()
        
        //toDoListActive[indexPath.row] = toDoViewController.currentToDo!
        toDoListActive[index!.row] = toDoViewController.currentToDo!
        self.tableView.reloadData()

        //hide the detail view controller
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func addNewToDo(sender: AnyObject) {
        var newToDo = ToDo(shortName: "", description: "", priority: "", completed: "", startDate: "", endDate: "", notes: "", clientOrg: "", clientDomain: "", clientProject: "", clientPerson: "")
        toDoListActive.insert(newToDo, atIndex: 0)
        
        println("=================================")
        
        println("toDoListActive.count \(toDoListActive.count)")
        println("toDoListCompleted.count \(toDoListCompleted.count)")
        self.tableView.reloadData()
    }

//override func editButtonItem() -> UIBarButtonItem {
//        return self.
//    }
  
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        if section == 0 {
            return toDoListActive.count
        }
            else {
            return toDoListCompleted.count
        }
    }

    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Active"
        }
        else {
            return "Completed"
        }
            
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("toDoCell", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...
        var priorityIcon: String
        var currentToDo: ToDo
        
        if indexPath.section == 0 {
            currentToDo = toDoListActive[indexPath.row]
        }
            else {
            currentToDo = toDoListCompleted[indexPath.row]
        }
        
        cell.textLabel?.text = currentToDo.shortName
        cell.detailTextLabel?.text = currentToDo.description
        
        
        // Retrieve an image
        
        switch currentToDo.priority
            {
        case "H":
            priorityIcon = "HighPriorityIcon"
        case "M":
            priorityIcon = "MediumPriorityIcon"
        case "L":
            priorityIcon = "LowPriorityIcon"
        default:
            priorityIcon = "NoPriorityIcon"
        }
        
        var myImage = UIImage(named: priorityIcon)
        cell.imageView?.image = myImage
        
        return cell
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        var selectedToDo: ToDo
        
        if editingStyle == UITableViewCellEditingStyle.Delete {
        
            
            if indexPath.section == 0 {
                toDoListActive.removeAtIndex(indexPath.row)
            }
            else {
                toDoListCompleted.removeAtIndex(indexPath.row)
            }

            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
            
            println("=================================")

            println("indexPath.row \(indexPath.row)")
            println("indexPath.section \(indexPath.section)")
            println("toDoListActive.count \(toDoListActive.count)")
            println("toDoListCompleted.count \(toDoListCompleted.count)")

        }
    }

    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    
        var secondScene = segue.destinationViewController as InfoViewController
        var index = self.tableView.indexPathForSelectedRow()
        
        if index!.section == 0 {
            let selectedToDo = toDoListActive[index!.row]
            secondScene.currentToDo = selectedToDo
        }
        else {
            let selectedToDo = toDoListCompleted[index!.row]
            secondScene.currentToDo = selectedToDo
        }
    }
}
