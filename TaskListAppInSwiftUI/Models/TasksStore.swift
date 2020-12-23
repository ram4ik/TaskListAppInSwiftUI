//
//  TasksStore.swift
//  TaskListAppInSwiftUI
//
//  Created by ramil on 22.12.2020.
//

import Combine

class TasksStore: ObservableObject {
    
    /*
    @Published var tasks = [
        TaskDataModel(name: "Learn SwiftUI"),
        TaskDataModel(name: "Learn Combine"),
        TaskDataModel(name: "Learn UIKit"),
        TaskDataModel(name: "Do morning exercise"),
        TaskDataModel(name: "Drink more water"),
        TaskDataModel(name: "Sleep well"),
        TaskDataModel(name: "More walking"),
        TaskDataModel(name: "Visit Fitness center"),
    ]
    */
    
    
    // Cool tip: use .map{} to generate array
    /*
     var task = [
        "New Task One",
        "New Task Two",
     ]. map { TaskDataModel(name: $0) }
     */
    
    @Published var prioritizedTasks = [
        PriorituzedTasks(
            priority: .high,
            tasks: [
                TaskDataModel(name: "Learn SwiftUI"),
                TaskDataModel(name: "Learn Combine"),
                TaskDataModel(name: "Learn UIKit"),
                TaskDataModel(name: "Do morning exercise"),
            ]),
        PriorituzedTasks(
            priority: .medium,
            tasks: [
                TaskDataModel(name: "Drink more water"),
                TaskDataModel(name: "Sleep well"),
            ]),
        PriorituzedTasks(
            priority: .low,
            tasks: [
                TaskDataModel(name: "More walking"),
            ]),
        PriorituzedTasks(
            priority: .no,
            tasks: [
                TaskDataModel(name: "Visit Fitness center"),
            ]),
    ]
    
    func getIndex(for priority: TaskDataModel.Priority) -> Int {
        prioritizedTasks.firstIndex { $0.priority == priority }!
    }
}
