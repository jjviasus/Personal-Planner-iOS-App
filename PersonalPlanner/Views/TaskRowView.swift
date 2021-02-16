//
//  TaskCell.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 2/15/21.
//

import SwiftUI

struct TaskRowView: View {
    @ObservedObject var taskRowVM: TaskRowViewModel
    
    var onCommit: (Task) -> (Void) = { _ in } // empty/default implementation
    // Whenever a user performs an action like pressing the return key, TextField calls onCommit closure.

    var body: some View {
        HStack {
            Image(systemName: taskRowVM.task.status ? "circle.circle.fill" : "circle.circle")
                .resizable()
                .frame(width: 20, height: 20)
                .onTapGesture { // whenever the user taps on the image, we will toggle the completed state of the underlying task
                    self.taskRowVM.task.status.toggle()
                }
            TextField("Enter the task description", text: $taskRowVM.task.description, onCommit: {
                self.onCommit(self.taskRowVM.task) // when the user commits to a text (ex: presses enter) this takes the current task and sends it in our call back and then we capture it
            })
            .font(.system(size: 25, weight: .regular, design: .rounded))
            .foregroundColor(.black)
        }
    }
}

struct TaskCell_Previews: PreviewProvider {
    static var taskCellVM = TaskRowViewModel(task: Task(description: "Hey", status: false))
    
    static var previews: some View {
        TaskRowView(taskRowVM: taskCellVM)
    }
}
