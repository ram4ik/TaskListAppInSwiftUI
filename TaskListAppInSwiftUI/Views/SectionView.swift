//
//  SectionView.swift
//  TaskListAppInSwiftUI
//
//  Created by ramil on 23.12.2020.
//

import SwiftUI

struct SectionView: View {
    @Binding var prioritizedTasks: TasksStore.PriorituzedTasks
    
    var body: some View {
        Section(header: Text("\(prioritizedTasks.priority.rawValue.capitalized) Priority")) {
            ForEach(prioritizedTasks.tasks) { index in
                RowView(task: $prioritizedTasks.tasks[index])
            }
            .onMove(perform: { sourceIndices, destinationIndex in
                prioritizedTasks.tasks.move(fromOffsets: sourceIndices, toOffset: destinationIndex)
            })
            .onDelete { indexSet in
                prioritizedTasks.tasks.remove(atOffsets: indexSet)
            }
        }
    }
}
