//
//  DateView.swift
//  PersonalPlanner
//
//  Created by Justin Viasus on 2/16/21.
//

import SwiftUI

struct DateView: View {
    @ObservableObject var dateVM = DateViewModel()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        DateView()
    }
}
