//
//  ToDoHeader.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 12/24/20.
//

import SwiftUI

struct ToDoHeader: View {
    
    var body: some View {
        HStack(spacing: 3) {
            Image(systemName: "pencil.circle")
                .resizable()
                .foregroundColor(.black)
                .aspectRatio(contentMode: .fit)
                .frame(width: 23, height: 23)
            Text("Tasks:")
                .font(.system(size: 25, weight: .bold, design: .default))
                .foregroundColor(.black)
        }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct ToDoHeader_Previews: PreviewProvider {
    static var previews: some View {
        ToDoHeader()
    }
}
