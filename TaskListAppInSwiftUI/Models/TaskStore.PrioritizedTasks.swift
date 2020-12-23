//
//  TaskStore.PrioritizedTasks.swift
//  TaskListAppInSwiftUI
//
//  Created by ramil on 23.12.2020.
//

extension TasksStore {
    struct PriorituzedTasks {
        let priority: TaskDataModel.Priority
        var tasks: [TaskDataModel]
    }
}

extension TasksStore.PriorituzedTasks: Identifiable {
    var id: TaskDataModel.Priority { priority }
}
