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
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                List(taskListVM.taskCellViewModels) { taskCellVM in
                    TaskCell(taskCellVM: taskCellVM)
                }
                Button(action: {}) {
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

    var body: some View {
        HStack {
            Image(systemName: taskCellVM.task.status ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 20, height: 20)
            Text(taskCellVM.task.description)
        }
    }
}
