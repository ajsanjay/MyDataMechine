//
//  MYDataHeadingText.swift
//  MyDataMechine
//
//  Created by Jaya Sabeen on 29/04/24.
//

import SwiftUI

struct MYDataHeadingText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.textColour)
            .padding()
    }
    
}

#Preview {
    MYDataHeadingText(text: "Content")
}
