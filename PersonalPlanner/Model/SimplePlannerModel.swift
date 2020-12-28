//
//  SimplePlannerModel.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 12/22/20.
//

import Combine
import Foundation

// Represents a simple planner. Uses the PlannerTask class as the task and PlannerDate as the date.
public class SimplePlannerModel: ObservableObject {
    // ObservableObject Note: Anything that conforms to ObservableObject can be used inside SwiftUI, and publish announcements when its values have changed so the user interface can be updated.
    
    //var didChange = PassthroughSubject<Void, Never>() // sends notifications when a change happens
    
    // a dictionary with PlannerDate's as keys and a List of PlannerTask's as values
    @Published var taskMap = [PlannerDate:[PlannerTask]]()
    @Published var currentDate:PlannerDate
    @Published var modifiedDate:PlannerDate
    private var dateChange:Int
    
    init() {
        let calendar = Calendar.current
        
        currentDate = PlannerDate(month: calendar.component(.month, from: Date()), day: calendar.component(.day, from: Date()), year: calendar.component(.year, from: Date()))
        
        modifiedDate = PlannerDate(month: calendar.component(.month, from: Date()), day: calendar.component(.day, from: Date()), year: calendar.component(.year, from: Date()))
        
        dateChange = 0
    }
    
    // modifyDate
    public func modifyDate(change: Int) {
        dateChange += change
        let calendar = Calendar.current
        let updatedDay:Date = calendar.date(byAdding: .day, value: dateChange, to: Date())!
        
        modifiedDate = PlannerDate(month: calendar.component(.month, from: updatedDay), day: calendar.component(.day, from: updatedDay), year: calendar.component(.year, from: updatedDay))
        print(modifiedDate.getDay())
    }
    
    // resetModifiedDate
    public func resetModifiedDate() {
        dateChange = 0
        modifiedDate = PlannerDate(month: currentDate.getMonth(), day: currentDate.getDay(), year: currentDate.getYear())
        print(modifiedDate.getDay())
    }
    
    
    // addTask
    public func addTask(task: PlannerTask, date: PlannerDate) {
        
        if let val = taskMap[date] {
            // now val is not nil and the Optional has been unwrapped
            
            // append the new task to the list of tasks that already exist for this key
            var newListOfTasks = [PlannerTask]()
            newListOfTasks.append(contentsOf: val)
            
            // set the value of the key equal to the new list of tasks
            self.taskMap[date] = newListOfTasks
        } else {
            // sets the value of the new date key equal to a list with the given task
            self.taskMap[date] = [task]
        }
    }
    
    // removeTask
    public func removeTask(task: PlannerTask, date: PlannerDate) {
        if let val = taskMap[date] {
            // date is present in dictionary
        
            // check that val (the task list) contains the given task
            if val.contains(task) {
                // contains the task
                
                // remove the task
                taskMap[date]?.remove(at: val.firstIndex(of: task)!)
            } else {
                // task is not present at date
                
                // TODO: throw exception or do nothing?
            }
        } else {
            // date is not present
            
            // TODO: throw exception or do nothing?
        }
    }
    
//    // setTaskAsIncomplete
//    public func setTaskAsIncomplete(task: PlannerTask, date: PlannerDate) {
//        if let val = taskMap[date] {
//            // date is present in dictionary
//        
//            // check that val (the task list) contains the given task
//            if val.contains(task) {
//                // contains the task
//                
//                // mark task as incomplete
//                let index = taskMap[date]?.firstIndex(of: task)
//                taskMap[date]?[index!].markIncomplete()
//            } else {
//                // task is not present at date
//                
//                // TODO: throw exception or do nothing?
//            }
//        } else {
//            // date is not present
//            
//            // TODO: throw exception or do nothing?
//        }
//    }
    
//    // setTaskAsComplete
//    public func setTaskAsComplete(task: PlannerTask, date: PlannerDate) {
//        if let val = taskMap[date] {
//            // date is present in dictionary
//        
//            // check that val (the task list) contains the given task
//            if val.contains(task) {
//                // contains the task
//                
//                // mark task as complete
//                let index = taskMap[date]?.firstIndex(of: task)
//                taskMap[date]?[index!].markComplete()
//            } else {
//                // task is not present at date
//                
//                // TODO: throw exception or do nothing?
//            }
//        } else {
//            // date is not present
//            
//            // TODO: throw exception or do nothing?
//        }
//    }
    
    // getTasksAtDate
    public func getTasksAtDate(date: PlannerDate) -> [PlannerTask] {
        if let tasks = taskMap[date] {
            // date is present in dictionary
            
            // return the list of tasks at the given date
            return tasks
        } else {
            // date is not present in dictionary
            
            // return an empty list
            return []
        }
    }
    
    
    // getAllTasks
    
    // moveTask
    
    // areTasksComplete (tasksCompleteAtDate)
    
    
   
}
