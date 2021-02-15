//
//  TaskListViewModel.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 2/15/21.
//

import Foundation
import Combine

class TaskListViewModel: ObservableObject {
    @Published var taskCellViewModels = [TaskRowViewModel]() // creates an empty array when we initialize
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        self.taskCellViewModels = testDataTasks.map { task in
            TaskRowViewModel(task: task)
        }
    }
    
    // given a task, will create a new viewmodel for it and add it to this tasklistviewmodel's list of task viewmodels
    func addTask(task: Task) {
        let taskVM = TaskRowViewModel(task: task) // creates a new viewmodel with the given task
        self.taskCellViewModels.append(taskVM) // adds the new viewmodel to the end of the vm list
    }
}
