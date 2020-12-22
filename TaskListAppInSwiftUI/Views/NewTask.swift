//
//  NewTask.swift
//  TaskListAppInSwiftUI
//
//  Created by ramil on 22.12.2020.
//

import SwiftUI

struct NewTask: View {
    @State private var text = ""
    
    var body: some View {
        TextField("Task Name", text: $text)
    }
}

struct NewTask_Previews: PreviewProvider {
    static var previews: some View {
        NewTask()
    }
}
