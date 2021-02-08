//
//  PlannerTask.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 12/22/20.
//

import Foundation


public class PlannerTask: Equatable, Identifiable {
    
    public var id: String = UUID().uuidString // automatically assigns a unique id to each task
    var description:String
    var status:Bool
    
    public init(_ description:String, _ status:Bool) {
        self.description = description
        self.status = status
    }
    
    public func updateDescription(_ description:String) {
        self.description = description
    }
    
    public func markComplete() {
        self.status = true
    }
    
    public func markIncomplete() {
        self.status = false
    }
    
    public static func == (lhs: PlannerTask, rhs: PlannerTask) -> Bool {
        return lhs.description == rhs.description && lhs.status == rhs.status
    }
}

// this is test data
#if DEBUG
let testDataTasks = [
    PlannerTask("Create View-Models", false),
    PlannerTask("Get a single date to work", false),
    PlannerTask("This task is complete!", true)
]
#endif

//public func getDescription() -> String {
//    return self.description
//}
//
//public func getStatus() -> Bool {
//    return self.status
//}
//
//public func toggleStatus() {
//    self.status = !self.status
//}
