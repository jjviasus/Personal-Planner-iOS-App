//
//  DateViewModel.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 2/15/21.
//

import Foundation

// A ViewModel that
class DateViewModel: ObservableObject {
    @Published var date: Date // any changes on this date will be published, and listened to
    @Published var format: String = ""
    
    init(date: Date) {
        self.date = date
        
        // create the proper format of the date in dd/mm/yyyy
    }
    
    // adds 1 day to the date
    func incrementDate() -> Void {
        // call something to make change in the model / update a model field (is Date our model?)
        
        // update format?
    }
    
    // subtracts 1 day from the date
    func decrementDate() -> Void {
        // call something to make change in the model / update a model field (is Date our model?)
        
        // update format?
    }
    
}


// Should I have a Planner ViewModel that has a list of TaskListViewModels
