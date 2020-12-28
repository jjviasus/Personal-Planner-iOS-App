//
//  PlannerDate.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 12/22/20.
//

import Foundation

public class PlannerDate : Comparable, Hashable {
    
//    enum ValidationError: Error {
//            case invalidDate
//        }
    
    private var day:Int
    private var month:Int
    private var year:Int
    
    public init(month:Int, day:Int, year:Int) { // throws
        // check for invalid dates
//        if (month <= 0 || day <= 0 || year <= 0) {
//            throw ValidationError.invalidDate
//        }
        // TODO: check for values that are too large
        
        self.month = month
        self.day = day
        self.year = year
    }
    
    public func getDay() -> Int {
        return self.day
    }
    
    public func getMonth() -> Int {
        return self.month
    }
    
    public func getYear() -> Int {
        return self.year
    }
    
    // need to make it comparable
    public static func < (lhs: PlannerDate, rhs: PlannerDate) -> Bool {
        if lhs.year != rhs.year {
            return lhs.year < rhs.year
        } else if lhs.month != rhs.month {
            return lhs.month < rhs.month
        } else {
            return lhs.day < rhs.day
        }
    }
    
    public static func == (lhs: PlannerDate, rhs: PlannerDate) -> Bool {
        return lhs.year == rhs.year && lhs.month == rhs.month
            && lhs.day == rhs.day
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(day)
        hasher.combine(month)
        hasher.combine(year)
    }
}
