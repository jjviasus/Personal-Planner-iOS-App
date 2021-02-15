//
//  TaskPage.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 12/24/20.
//

import SwiftUI

//struct TaskPage: View {
//    @EnvironmentObject var model: SimplePlannerModel
//    @State var presentAddNewItem = false
//    
//    var body: some View {
//        ZStack {
//            LinearGradient(gradient: Gradient(colors: [Color("WhiteYellowGradient"), Color("YellowGradient"), Color("LightYellowGradient"), Color("WhiteYellowGradient")]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//            
//            VStack(alignment: .leading, spacing: 0) {
//                HStack {
//                    ToDoHeader()
//                        .padding(.top)
//                        .padding(.leading)
//                        .padding(.bottom)
//                    
//                    Spacer()
//                    
//                    Button {
//                        self.presentAddNewItem.toggle()
//                        
//                    } label: {
//                        Image(systemName: "plus.circle")
//                            .resizable()
//                            .foregroundColor(Color.init("DarkRed"))
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 25, height: 25)
//                            .padding()
//                    }
//                }
//                
//                Divider()
//                
//                ScrollView {
//                    VStack(alignment: .leading, spacing: 10) {
//                        
//                        ForEach(self.model.getTasksAtDate(date: model.modifiedDate)) { task in
//                            TaskRow(task: task)
//                        }
//                    }
//                    .padding(.top)
//                }
//                .padding(.leading, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//            }
//            .frame(width: 350, height: 700, alignment: .leading)
//        }
//        .frame(width: 350, height: 700, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//        .cornerRadius(10)
//        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//        
//    }
//}
//
//struct TaskPage_Previews: PreviewProvider {
//    static var model = SimplePlannerModel()
//    
//    static var previews: some View {
//        TaskPage().environmentObject(model)
//    }
//}
