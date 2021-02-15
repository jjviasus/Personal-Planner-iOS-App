//
//  TaskRow.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 12/24/20.
//

import SwiftUI

//struct TaskRow: View {
//    @EnvironmentObject var model: SimplePlannerModel
//    var task: PlannerTask
//    
//    var body: some View {
//        HStack {
//            Button(action: {
//                task.status ? model.setTaskAsIncomplete(task: task, date: model.modifiedDate) : model.setTaskAsComplete(task: task, date: model.modifiedDate)
//                task.status ? task.markIncomplete() : task.markComplete()
//            }) {
//                Image(systemName: task.status ? "circle.circle.fill" : "circle.circle")
//                    .resizable()
//                    .foregroundColor(.black)
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 25, height: 25)
//            }
//            
//            Text(task.description)
//                .font(.system(size: 25, weight: .regular, design: .rounded))
//                .foregroundColor(.black)
//                
//        }
//    }
//}
//
//struct TaskRow_Previews: PreviewProvider {
//    static var model = SimplePlannerModel()
//    
//    static var previews: some View {
//        TaskRow(task: PlannerTask("Sample task", true)).environmentObject(model)
//    }
//}
