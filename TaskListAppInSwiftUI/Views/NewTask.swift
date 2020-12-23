//
//  NewTask.swift
//  TaskListAppInSwiftUI
//
//  Created by ramil on 22.12.2020.
//

import SwiftUI

struct NewTask: View {
    @State private var text = ""
    @State private var priority: TaskDataModel.Priority = .no
    @Environment(\.presentationMode) var presentationMode
    
    var store: TasksStore
    
    var body: some View {
        Form {
            TextField("Task Name", text: $text)
            
            VStack {
                Text("Priority")
                Picker("Priority", selection: $priority.caseIndex) {
                    ForEach(TaskDataModel.Priority.allCases.indices) { priorityIndex in
                        Text(TaskDataModel.Priority.allCases[priorityIndex].rawValue.capitalized)
                            .tag(priorityIndex)
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
            
            Button {
                let priorityIndex = store.getIndex(for: priority)
                store.prioritizedTasks[priorityIndex].tasks.append(TaskDataModel(name: text))
                presentationMode.wrappedValue.dismiss()
            } label: {
                 Text("Add")
            }.disabled(text.isEmpty)

        }
    }
}

struct NewTask_Previews: PreviewProvider {
    static var previews: some View {
        NewTask(store: TasksStore())
    }
}
