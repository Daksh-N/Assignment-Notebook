//
//  ContentView.swift
//  Assignment Notebook
//
//  Created by Daksh Nakra on 1/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var toDoItems =

            [ToDoItem(course: "High", description: "Take out trash", dueDate: Date()),

             ToDoItem(course: "Medium", description: "Pick up clothes", dueDate: Date()),

             ToDoItem(course: "Low", description: "Eat a donut", dueDate: Date())]

    var body: some View {
        NavigationView {
            List {
                ForEach(toDoItems) { item in
                    Text(item.description)
                }
                .onMove { indices, newOffset in
                    toDoItems.move(fromOffsets: indices, toOffset: newOffset)
                }
                .onDelete { indexSet in
                    toDoItems.remove(atOffsets: indexSet)
                }
            }
            .navigationBarTitle("Things", displayMode: .inline)
            .navigationBarItems(leading: EditButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ToDoItem: Identifiable {
    var id = UUID()
    var course = String()
    var description = String()
    var dueDate = Date()
}
