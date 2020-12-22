//
//  TaskListAppInSwiftUIApp.swift
//  TaskListAppInSwiftUI
//
//  Created by ramil on 22.12.2020.
//

import SwiftUI

@main
struct TaskListAppInSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(store: TasksStore())
        }
    }
}
