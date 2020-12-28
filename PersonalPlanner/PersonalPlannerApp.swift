//
//  PersonalPlannerApp.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 12/22/20.
//

import SwiftUI

@main
struct PersonalPlannerApp: App {
    // this creates a new planner model when the app starts and keeps it alive regardless of what view we show
    var planner = SimplePlannerModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(planner)
        }
    }
}
