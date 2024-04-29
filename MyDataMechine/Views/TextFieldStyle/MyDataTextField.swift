//
//  MyDataTextField.swift
//  MyDataMechine
//
//  Created by Jaya Sabeen on 29/04/24.
//

import SwiftUI

struct MyDataTextField: View {
    @Binding var text: String
    var placeholder: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            Capsule()
                .stroke(.strokeClr, lineWidth: 1)
                .frame(height: 50)
            
            TextField(placeholder, text: $text)
                .padding(.horizontal, 15)
                .foregroundColor(.textColour)
                .keyboardType(.numberPad)
                .textFieldStyle(PlainTextFieldStyle())
        }
    }
}

#Preview {
    MyDataTextField(text: .constant(""), placeholder: "Input number of pages for pagination")
}
