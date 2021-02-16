//
//  PlannerDate.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 12/22/20.
//

import Foundation

struct Date : Comparable, Hashable {
    
//    enum ValidationError: Error {
//            case invalidDate
//        }
    
    var day:Int
    var month:Int
    var year:Int
    
    init(month:Int, day:Int, year:Int) { // throws
        // check for invalid dates
//        if (month <= 0 || day <= 0 || year <= 0) {
//            throw ValidationError.invalidDate
//        }
        // TODO: check for values that are too large
        
        self.month = month
        self.day = day
        self.year = year
    }
    
    // make it comparable
    static func < (lhs: Date, rhs: Date) -> Bool {
        if lhs.year != rhs.year {
            return lhs.year < rhs.year
        } else if lhs.month != rhs.month {
            return lhs.month < rhs.month
        } else {
            return lhs.day < rhs.day
        }
    }
    
    static func == (lhs: Date, rhs: Date) -> Bool {
        return lhs.year == rhs.year && lhs.month == rhs.month
            && lhs.day == rhs.day
    }
    
    // make it hashable
    func hash(into hasher: inout Hasher) {
        hasher.combine(day)
        hasher.combine(month)
        hasher.combine(year)
    }
}
