//
//  TaskListView.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 2/14/21.
//

import SwiftUI

struct TaskListView: View {
    @ObservedObject var taskListVM = TaskListViewModel() // allows swiftui to listen to any updates that this will produce
    
    let tasks = testDataTasks
    
    @State var presentAddNewItem = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                List {
                    ForEach(taskListVM.taskCellViewModels) { taskCellVM in
                        TaskCell(taskCellVM: taskCellVM)
                    }
                    if presentAddNewItem {
                        TaskCell(taskCellVM: TaskCellViewModel(task: PlannerTask(description: "", status: false))) { task in
                            self.taskListVM.addTask(task: task)
                            self.presentAddNewItem.toggle() // whenever we add a new element we will hide the editor cell
                        }
                    }
                }
                Button(action: { self.presentAddNewItem.toggle()}) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Add New Task")
                    }
                }
                .padding()
            }
            .navigationBarTitle("Tasks")
        }
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}

struct TaskCell: View {
    @ObservedObject var taskCellVM: TaskCellViewModel
    
    var onCommit: (PlannerTask) -> (Void) = { _ in } // empty/default implementation
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
