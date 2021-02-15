//
//  PlannerTask.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 12/22/20.
//
import Foundation

struct Task: Identifiable {
    var id: String = UUID().uuidString
    var description:String
    var status:Bool
}

// test data
#if DEBUG
let testDataTasks = [
    Task(description: "Create View-Models", status: false),
    Task(description: "Get a single date to work", status: false),
    Task(description: "This task is complete!", status: true)
]
#endif
