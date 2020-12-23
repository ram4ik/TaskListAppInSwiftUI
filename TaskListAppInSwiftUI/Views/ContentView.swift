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
                ForEach(store.prioritizedTasks) { index in
                    SectionView(prioritizedTasks: $store.prioritizedTasks[index])
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Tasks")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
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
