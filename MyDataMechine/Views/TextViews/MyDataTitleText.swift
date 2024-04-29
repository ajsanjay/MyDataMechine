//
//  MyDataTitleText.swift
//  MyDataMechine
//
//  Created by Jaya Sabeen on 29/04/24.
//

import SwiftUI

struct MyDataTitleText: View {
    
    var hint: String
    
    var body: some View {
        Text(hint)
            .font(.headline)
            .fontWeight(.bold)
            .foregroundColor(.textColour)
            .padding()
    }
}

#Preview {
    MyDataTitleText(hint: "A Title")
}
