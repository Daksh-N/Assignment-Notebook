//
//  AssignmentList.swift
//  Assignment Notebook
//
//  Created by Daksh Nakra on 1/27/23.
//

import Foundation

class AssignmentList: ObservableObject {

    @Published var items = [ToDoItem(course: "High", description: "Take out trash", dueDate: Date()),

                            ToDoItem(course: "Medium", description: "Pick up clothes", dueDate: Date()),

                            ToDoItem(course: "Low", description: "Eat a donut", dueDate: Date())]

 }
