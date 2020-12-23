//
//  RowView.swift
//  TaskListAppInSwiftUI
//
//  Created by ramil on 23.12.2020.
//

import SwiftUI

struct RowView: View {
    @Binding var task: TaskDataModel
    
    var body: some View {
        NavigationLink(
            destination: TaskEditingView(task: $task),
            label: {
                Text(task.name)
            })
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(task: .constant(TaskDataModel(name: "Preview")))
    }
}
