//
//  TaskListViewModel.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 2/15/21.
//

import Foundation
import Combine

class TaskListViewModel: ObservableObject {
    @Published var taskRowViewModels = [TaskRowViewModel]() // creates an empty array when we initialize
    // should this keep track of the date that is currently being viewed?
    // should this pull data from the data, asking what list of tasks are present at the particular day
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        self.taskRowViewModels = testDataTasks.map { task in
            TaskRowViewModel(task: task)
        }
    }
    
    // given a task, will create a new viewmodel for it and add it to this tasklistviewmodel's list of task viewmodels
    func addTask(task: Task) {
        let taskVM = TaskRowViewModel(task: task) // creates a new viewmodel with the given task
        self.taskRowViewModels.append(taskVM) // adds the new viewmodel to the end of the vm list
    }
}
