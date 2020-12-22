//
//  ContentView.swift
//  TaskListAppInSwiftUI
//
//  Created by ramil on 22.12.2020.
//

import SwiftUI

struct ContentView: View {
    var store: TasksStore
    
    @State private var showNewTask = false
    
    var body: some View {
        NavigationView {
            List(store.tasks) { task in
                Text(task.name)
            }
            .navigationTitle("Tasks")
            .navigationBarItems(trailing:
                                    Button(action: {
                                        showNewTask.toggle()
                                    }, label: {
                                        Image(systemName: "plus")
                                    })
            ).sheet(isPresented: $showNewTask) { 
                NewTask()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: TasksStore())
    }
}
