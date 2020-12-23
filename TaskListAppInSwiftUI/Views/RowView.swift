//
//  RowView.swift
//  TaskListAppInSwiftUI
//
//  Created by ramil on 23.12.2020.
//

import SwiftUI

struct RowView: View {
    var task: TaskDataModel
    
    var body: some View {
        Text(task.name)
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(task: TaskDataModel(name: "Preview"))
    }
}
