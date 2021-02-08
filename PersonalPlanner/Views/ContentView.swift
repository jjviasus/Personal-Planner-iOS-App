//
//  ContentView.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 12/22/20.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: SimplePlannerModel
    @State private var showCalendar:Bool = false
    
    var body: some View {
        ZStack {
            BackgroundColor(startColor: Color("PinkGradient"), endColor: Color("YellowGradient"))
            
            VStack {
                DateHeader()
                    .padding()
                
                Spacer()
                
                TaskPage()
                    .padding()
                
                Spacer()
                
                HStack {
                    LeftButton()
                    
                    Button {
                        // actions
                        showCalendar.toggle()
                    } label: {
                        // appearance
                        if showCalendar {
                            TodayHeader()
                        } else {
                            CalendarHeader()
                        }
                    }
                    
                    RightButton()
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static let model = SimplePlannerModel()
    
    static var previews: some View {
        ContentView().environmentObject(model)
    }
}

// the binding ($) makes sure that the isDark variable we are passing to BackgroundColor will always be the same as thh isDark variable in the ContentView

