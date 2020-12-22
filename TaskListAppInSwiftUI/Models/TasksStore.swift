//
//  TasksStore.swift
//  TaskListAppInSwiftUI
//
//  Created by ramil on 22.12.2020.
//

import Combine

class TasksStore: ObservableObject {
    
    @Published var tasks = [
        TaskDataModel(name: "Learn SwiftUI"),
        TaskDataModel(name: "Learn Combine"),
        TaskDataModel(name: "Learn UIKit"),
        TaskDataModel(name: "Do morning exercise"),
        TaskDataModel(name: "Drink more water"),
        TaskDataModel(name: "Sleep well"),
        TaskDataModel(name: "More walking"),
    ]
    // Cool tip: use .map{} to generate array
    /*
     var task = [
        "New Task One",
        "New Task Two",
     ]. map { TaskDataModel(name: $0) }
     */
}
