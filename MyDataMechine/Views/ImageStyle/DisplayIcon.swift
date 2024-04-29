//
//  DisplayIcon.swift
//  MyDataMechine
//
//  Created by Jaya Sabeen on 29/04/24.
//

import SwiftUI

struct DisplayIcon: View {
    
    var systemImage: String
    
    var body: some View {
        Image(systemName: systemImage)
            .resizable()
            .frame(width: 90, height: 90)
            .foregroundColor(.textColour)
            .padding()
    }
}

#Preview {
    DisplayIcon(systemImage: "person.circle")
}
