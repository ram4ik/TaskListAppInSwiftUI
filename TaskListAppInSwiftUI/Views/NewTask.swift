//
//  NewTask.swift
//  TaskListAppInSwiftUI
//
//  Created by ramil on 22.12.2020.
//

import SwiftUI

struct NewTask: View {
    @State private var text = ""
    @Environment(\.presentationMode) var presentationMode
    
    var store: TasksStore
    
    var body: some View {
        Form {
            TextField("Task Name", text: $text)
            Button {
                store.tasks.append(TaskDataModel(name: text))
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
