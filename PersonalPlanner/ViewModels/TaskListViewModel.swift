//
//  TaskListViewModel.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 2/15/21.
//

import Foundation
import Combine

class TaskListViewModel: ObservableObject {
    @Published var taskCellViewModels = [TaskCellViewModel]() // creates an empty array when we initialize
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        self.taskCellViewModels = testDataTasks.map { task in
            TaskCellViewModel(task: task)
        }
    }
    
    func addTask(task: PlannerTask) {
        let taskVM = TaskCellViewModel(task: task)
        self.taskCellViewModels.append(taskVM)
    }
}
