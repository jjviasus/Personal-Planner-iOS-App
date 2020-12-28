//
//  TaskPage.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 12/24/20.
//

import SwiftUI

struct TaskPage: View {
    @EnvironmentObject var model: SimplePlannerModel
    //@State private var dateToDisplay:PlannerDate
    var textColor: Color
    @State var text: String = ""
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("WhiteYellowGradient"), Color("YellowGradient"), Color("LightYellowGradient"), Color("WhiteYellowGradient")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/) // ignores the safe area
            
            VStack(alignment: .leading, spacing: 0) {
                ToDoHeader(textColor: textColor)
                    .padding(.top)
                    .padding(.leading)
                    .padding(.bottom)
                Divider()
                ScrollView {
                    VStack(alignment: .leading, spacing: 10) {
                        TaskRow(textColor: .black, task: PlannerTask("Run"))
                        
                        
                        HStack {
                            Image(systemName: "plus.circle")
                                .resizable()
                                .foregroundColor(.secondary)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                                .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/)
                            
                            // allow the user to time in text
                            TextField("Add a task here:",text: $text)
                                .font(.system(size: 25, weight: .regular, design: .rounded))
                                
                                
                                
                        }
                        
                        
                        // create a task under the current date with the task description the user provided
                        
                        
                        
                        // for each task in the list of tasks for this particular date, create a task row with the respective completion status and description
                        
//                        ForEach(model.getTasksAtDate(date: model.currentDate)) { task in
//                            TaskRow(textColor: .black, task: task)
//                        }
                    }.padding(.top)
                }.padding(.leading, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }.frame(width: 350, height: 600, alignment: .leading)
        }
        .frame(width: 350, height: 600, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .cornerRadius(10)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        
    }
}

struct TaskPage_Previews: PreviewProvider {
    static var model = SimplePlannerModel()
    
    static var previews: some View {
        TaskPage(textColor: .black).environmentObject(model)
    }
}
