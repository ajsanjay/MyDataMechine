//
//  MyDataHintText.swift
//  MyDataMechine
//
//  Created by Jaya Sabeen on 29/04/24.
//

import SwiftUI

struct MyDataHintText: View {
    
    var hint: String
    
    var body: some View {
        Text(hint)
            .foregroundColor(.textColour)
            .padding()
    }
    
}

#Preview {
    MyDataHintText(hint: "Input number of pages")
}
