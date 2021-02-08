//
//  TaskPageViewModel.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 12/31/20.
//

import Foundation

// a view model only contains the data that you want to use on your view (the data is represented by properties in the View-Model)
class TaskPageViewModel: ObservableObject {
    @Published var taskRowViewModels = [TaskRowViewModel]() // a list of task rows
    
    
    init() {
        testDataTasks.forEach { task in
            self.taskRowViewModels.append(TaskRowViewModel(task: task))
        }
    }
}
