//
//  SelectDate.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 2/12/21.
//

import SwiftUI

struct SelectDate: View {
    @State private var date = Date() // once a date is selected from the date picker, it is stored in this var
    
    var body: some View {
        DatePicker(
                "Start Date",
                selection: $date,
                displayedComponents: [.date]
            )
            .datePickerStyle(GraphicalDatePickerStyle())
        .shadow(color: .gray, radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
    }
}

struct SelectDate_Previews: PreviewProvider {
    static var previews: some View {
        SelectDate()
    }
}
