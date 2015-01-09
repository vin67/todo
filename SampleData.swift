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

newToDo = ToDo(shortName: "Police statement", description: "What a hastle", priority: "M", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
toDoListActive.append(newToDo)

newToDo = ToDo(shortName: "Cook dinner", description: "Yummy food for my tummy", priority: "M", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
toDoListActive.append(newToDo)

newToDo = ToDo(shortName: "Painting fence", description: "What fun", priority: "L", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
toDoListActive.append(newToDo)

newToDo = ToDo(shortName: "Trim hedge", description: "Even more fun", priority: "L", completed: "N", startDate: "10/12/2014", endDate: "",   notes: "")
toDoListActive.append(newToDo)

newToDo = ToDo(shortName: "Grout enterance way", description: "This is back breaking", priority: "H", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
toDoListActive.append(newToDo)

newToDo = ToDo(shortName: "Exercise", description: "Walk every day", priority: "L", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
toDoListActive.append(newToDo)

newToDo = ToDo(shortName: "Get seedlings", description: "Can't germinate ", priority: "", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
toDoListActive.append(newToDo)


newToDo = ToDo(shortName: "Complete Marketing Essentials course", description: "marketing course", priority: "H", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
toDoListActive.append(newToDo)

newToDo = ToDo(shortName: "Tidy study", description: "Its a mess", priority: "H", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
toDoListActive.append(newToDo)

newToDo = ToDo(shortName: "Go to Tip", description: "Find tip", priority: "H", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
toDoListActive.append(newToDo)

newToDo = ToDo(shortName: "Redo broken tiles", description: "Where is tiles", priority: "H", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
toDoListActive.append(newToDo)

newToDo = ToDo(shortName: "Daily walk", description: "Get out and about", priority: "H", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
toDoListActive.append(newToDo)

newToDo = ToDo(shortName: "Research Lilly Pilly hedge", description: "Find a well priced one", priority: "H", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
toDoListActive.append(newToDo)

// completed activities

newToDo = ToDo(shortName: "Mow lawn", description: "iOS course", priority: "H", completed: "Y", startDate: "10/12/2014", endDate: "", notes: "")
toDoListCompleted.append(newToDo)

newToDo = ToDo(shortName: "Cook dinner", description: "iOS course", priority: "H", completed: "Y", startDate: "10/12/2014", endDate: "", notes: "")
toDoListCompleted.append(newToDo)

newToDo = ToDo(shortName: "Swift", description: "Complete Swift Essentials course", priority: "H", completed: "Y", startDate: "10/12/2014", endDate: "", notes: "Interesting course")
toDoListCompleted.append(newToDo)

newToDo = ToDo(shortName: "Mow lawn", description: "iOS course", priority: "H", completed: "Y", startDate: "10/12/2014", endDate: "", notes: "")
toDoListCompleted.append(newToDo)
}
