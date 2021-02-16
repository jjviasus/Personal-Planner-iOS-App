//
//  ContentView.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 12/22/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("1/11/2000")
            TaskListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// the binding ($) makes sure that the variable we are passing to the other view will always be the same state as the variable in this view

