//
//  BackgroundColor.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 12/23/20.
//

import SwiftUI

struct BackgroundColor: View {
    @EnvironmentObject var model: SimplePlannerModel
    var startColor: Color
    var endColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [startColor, endColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/) // ignores the safe area
    }
}

struct BackgroundColor_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundColor(startColor: Color("PinkGradient"), endColor: Color("YellowGradient"))
    }
}
