//
//  ContentView.swift
//  TaskListAppInSwiftUI
//
//  Created by ramil on 22.12.2020.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var store: TasksStore
    
    @State private var showNewTask = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(store.tasks) { task in
                    Text(task.name)
                }.onDelete { indexSet in
                    store.tasks.remove(atOffsets: indexSet)
                }
            }
            .navigationTitle("Tasks")
            .navigationBarItems(trailing:
                                    Button(action: {
                                        showNewTask.toggle()
                                    }, label: {
                                        Image(systemName: "plus")
                                    })
            ).sheet(isPresented: $showNewTask) {
                NewTask(store: store)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: TasksStore())
    }
}
