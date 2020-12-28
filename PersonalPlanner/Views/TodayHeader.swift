//
//  TodaysTasks.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 12/23/20.
//

import SwiftUI

struct TodayHeader: View {
    @EnvironmentObject var model: SimplePlannerModel
    var textColor: Color
    
    var body: some View {
        HStack {
            Image(systemName: "list.bullet.rectangle")
                //.renderingMode(.original) // gives us the original color of the icon
                .resizable()
                .foregroundColor(textColor)
                .aspectRatio(contentMode: .fit) // keeps the aspect ratio but fits it in our frame
                .frame(width: 30, height: 30)
            
            Text("Today")
                .font(.system(size: 25, weight: .bold, design: .default))
                .foregroundColor(textColor)
        }
        .frame(width: 200, height: 50, alignment: .center)
    }
}

struct TodaysTasks_Previews: PreviewProvider {
    static var previews: some View {
        TodayHeader(textColor: .black)
    }
}
