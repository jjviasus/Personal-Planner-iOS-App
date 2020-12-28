//
//  TaskRow.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 12/24/20.
//

import SwiftUI

struct TaskRow: View {
    @EnvironmentObject var model: SimplePlannerModel
    var textColor: Color
    var task: PlannerTask
    
    
    var body: some View {
        HStack {
            CompleteButton()
            Text(task.getDescription())
                .font(.system(size: 25, weight: .regular, design: .rounded))
                .foregroundColor(textColor)
                
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var model = SimplePlannerModel()
    
    static var previews: some View {
        TaskRow(textColor: .black, task: PlannerTask("RUN")).environmentObject(model)
    }
}
