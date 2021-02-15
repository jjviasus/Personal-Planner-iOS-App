//
//  TaskCellViewModel.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 2/14/21.
//

import Foundation
import Combine

// swiftui can observe any changes we make to the viewmodel also we want elements to be identifiable
class TaskCellViewModel: ObservableObject, Identifiable {
    @Published var task: PlannerTask // any change on the task will be listened to
    
    var id = ""
    @Published var completionStateIconName = ""
    
    private var cancellables = Set<AnyCancellable>()
    
    init(task: PlannerTask) {
        self.task = task
        
        $task
            .map { task in
                task.status ? "checkmark.circle.fill" : "circle" // returns the name for the icon
            }
            .assign(to: \.completionStateIconName, on: self) // stores it in the completionStateIconName property
            .store(in: &cancellables) // memory management
        
        $task
            .map { task in
                task.id // returns task id
            }
            .assign(to: \.id, on: self) // stores task id that was returned to the id property
            .store(in: &cancellables)
    }
}
