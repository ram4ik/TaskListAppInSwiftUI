//
//  ContentView.swift
//  TaskListAppInSwiftUI
//
//  Created by ramil on 22.12.2020.
//

import SwiftUI

struct ContentView: View {
    var store = TasksStore()
    
    var body: some View {
        List(store.tasks.indices) { index in
            Text(store.tasks[index].name)
        }
        List(store.tasks, id: \.id) { task in
            Text(task.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
