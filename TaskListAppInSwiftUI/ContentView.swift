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
        List(store.tasks) { task in
            Text(task.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
