//
//  MyDataButton.swift
//  MyDataMechine
//
//  Created by Jaya Sabeen on 29/04/24.
//

import SwiftUI

struct MyDataButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.black)
            .foregroundColor(.buttonTitle)
            .frame(width: 290, height: 60)
            .background(.buttonBG.gradient)
            .cornerRadius(30)
    }
    
}

#Preview {
    MyDataButton(title: "Continue")
}
