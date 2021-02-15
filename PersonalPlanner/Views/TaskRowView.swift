//
//  TaskCell.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 2/15/21.
//

import SwiftUI

struct TaskRowView: View {
    @ObservedObject var taskCellVM: TaskRowViewModel
    
    var onCommit: (Task) -> (Void) = { _ in } // empty/default implementation
    // Whenever a user performs an action like pressing the return key, TextField calls onCommit closure.

    var body: some View {
        HStack {
            Image(systemName: taskCellVM.task.status ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 20, height: 20)
                .onTapGesture { // whenever the user taps on the image, we will toggle the completed state of the underlying task
                    self.taskCellVM.task.status.toggle()
                }
            TextField("Enter the task description", text: $taskCellVM.task.description, onCommit: {
                self.onCommit(self.taskCellVM.task) // when the user commits to a text (ex: presses enter) this takes the current task and sends it in our call back and then we capture it
            })
        }
    }
}

struct TaskCell_Previews: PreviewProvider {
    static var taskCellVM = TaskRowViewModel(task: Task(description: "Hey", status: false))
    
    static var previews: some View {
        TaskRowView(taskCellVM: taskCellVM)
    }
}
