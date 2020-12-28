//
//  CompleteButton.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 12/27/20.
//

import SwiftUI

struct CompleteButton: View {
    @State var isSet = false
    
    var body: some View {
        Button(action: {
            // set the task as either complete or incomplete
            
            self.isSet.toggle()
        }) {
            // if complete, display filled circle. if incomplete, display unfilled circle.
            Image(systemName: isSet ? "circle.circle.fill" : "circle.circle")
                .resizable()
                .foregroundColor(.black)
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
                .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/)
        }
    }
}

struct CompleteButton_Previews: PreviewProvider {
    static var previews: some View {
        CompleteButton(isSet: false)
    }
}
