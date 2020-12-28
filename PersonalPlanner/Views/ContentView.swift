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
    //@State private var dateToDisplay:PlannerDate // this is the date the user is currently viewing
    
    var body: some View {
        ZStack {
            BackgroundColor(startColor: Color("PinkGradient"), endColor: Color("YellowGradient")) // the binding ($) makes sure that the isDark variable we are passing to BackgroundColor will always be the same as teh isDark variable in the ContentView
            
            VStack {
                DateHeader()
                    .padding()
                
                Spacer()
                
                TaskPage(textColor: .black)
                    .padding()
                
                Spacer()
                
                HStack {
                    LeftButton(textColor: .black)
                    
                    Button {
                        // actions
                        showCalendar.toggle()
                    } label: {
                        // appearance
                        if showCalendar {
                            TodayHeader( textColor: .black)
                        } else {
                            CalendarHeader( textColor: .black)
                        }
                    }
                    
                    // needs to be a button
                    RightButton(textColor: .black)
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
