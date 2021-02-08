//
//  TaskRowViewModel.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 12/31/20.
//

import Foundation

// a view model only contains the data that you want to use on your view (the data is represented by properties in the View-Model)
class TaskRowViewModel: ObservableObject {
    @Published var task: PlannerTask
    var id = ""
    @Published var statusStateIconName = ""
    
    init(task: PlannerTask) {
        self.task = task
    }
}
