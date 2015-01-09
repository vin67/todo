//
//  SampleData.swift
//  ToDoTable
//
//  Created by Vinod Ralh on 1/8/15.
//  Copyright (c) 2015 Vinod Ralh. All rights reserved.
//

import Foundation

func generateSampleData(inout toDoListActive: [ToDo], inout toDoListCompleted: [ToDo])
{

var newToDo = ToDo(shortName: "iOS course", description: "Course on mobile programming", priority: "H", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
toDoListActive.append(newToDo)

newToDo = ToDo(shortName: "Painting house", description: "Get the house painted", priority: "H", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
toDoListActive.append(newToDo)

newToDo = ToDo(shortName: "Termite inspection", description: "Ensure this is checked", priority: "M", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
toDoListActive.append(newToDo)



// completed activities


newToDo = ToDo(shortName: "Swift", description: "Complete Swift Essentials course", priority: "H", completed: "Y", startDate: "10/12/2014", endDate: "", notes: "Interesting course")
toDoListCompleted.append(newToDo)

newToDo = ToDo(shortName: "Mow lawn", description: "iOS course", priority: "H", completed: "Y", startDate: "10/12/2014", endDate: "", notes: "")
toDoListCompleted.append(newToDo)
}
