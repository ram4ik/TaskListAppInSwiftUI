//
//  TaskEditingView.swift
//  TaskListAppInSwiftUI
//
//  Created by ramil on 23.12.2020.
//

import SwiftUI

struct TaskEditingView: View {
    @Binding var task: TaskDataModel
    
    var body: some View {
        Form {
            TextField("Name", text: $task.name)
            Toggle("Completed", isOn: $task.completed)
        }
    }
}

struct TaskEditingView_Previews: PreviewProvider {
    static var previews: some View {
        TaskEditingView(task: .constant(TaskDataModel(name: "PREVIEW")))
    }
}
