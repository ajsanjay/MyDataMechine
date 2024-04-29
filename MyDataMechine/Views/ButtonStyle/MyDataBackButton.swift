//
//  MyDataBackButton.swift
//  MyDataMechine
//
//  Created by Jaya Sabeen on 29/04/24.
//

import SwiftUI

struct MyDataBackButton: View {
    
    var title: String
    
    var body: some View {
        Image(systemName: title)
            .resizable()
            .frame(width: 25, height: 20)
            .foregroundColor(.textColour)
    }
    
}

#Preview {
    MyDataBackButton(title: "arrow.backward")
}
