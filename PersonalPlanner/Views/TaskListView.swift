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
                    ForEach(taskListVM.taskRowViewModels) { taskCellVM in
                        TaskRowView(taskRowVM: taskCellVM)
                    }
                    if presentAddNewItem {
                        TaskRowView(taskRowVM: TaskRowViewModel(task: Task(description: "", status: false))) { task in
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
