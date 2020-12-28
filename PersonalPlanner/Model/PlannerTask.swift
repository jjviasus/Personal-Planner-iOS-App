//
//  PlannerTask.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 12/22/20.
//

import Foundation


public class PlannerTask: Equatable, Identifiable {
    
    var description:String
    var status:Bool
    
    public init(_ description:String) {
        self.description = description
        self.status = false
    }
    
    public func getDescription() -> String {
        return self.description
    }
    
    public func getStatus() -> Bool {
        return self.status
    }
    
    public func toggleStatus() {
        self.status = !self.status
    }
    
    public func updateDescription(_ description:String) {
        self.description = description
    }
    
    public static func == (lhs: PlannerTask, rhs: PlannerTask) -> Bool {
        return lhs.description == rhs.description && lhs.status == rhs.status
    }
}
