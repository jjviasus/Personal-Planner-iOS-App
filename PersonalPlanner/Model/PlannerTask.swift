//
//  PlannerTask.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 12/22/20.
//
import Foundation

struct PlannerTask: Identifiable {
    var id: String = UUID().uuidString
    var description:String
    var status:Bool
}

// test data
#if DEBUG
let testDataTasks = [
    PlannerTask(description: "Create View-Models", status: false),
    PlannerTask(description: "Get a single date to work", status: false),
    PlannerTask(description: "This task is complete!", status: true)
]
#endif
