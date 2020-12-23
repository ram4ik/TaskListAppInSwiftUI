//
//  RowView.swift
//  TaskListAppInSwiftUI
//
//  Created by ramil on 23.12.2020.
//

import SwiftUI

struct RowView: View {
    @Binding var task: TaskDataModel
    
    let checkmark = Image(systemName: "checkmark")
    
    var body: some View {
        NavigationLink(
            destination: TaskEditingView(task: $task),
            label: {
                if task.completed {
                    checkmark
                } else {
                    checkmark.hidden()
                }
                Text(task.name)
                    .strikethrough(task.completed)
            })
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(task: .constant(TaskDataModel(name: "Preview")))
    }
}
