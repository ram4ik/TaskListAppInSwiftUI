//
//  TaskDataModel.swift
//  TaskListAppInSwiftUI
//
//  Created by ramil on 22.12.2020.
//

import Foundation

struct TaskDataModel: Identifiable {
    let id: UUID = UUID()
    var name: String
    var completed: Bool = false
}
