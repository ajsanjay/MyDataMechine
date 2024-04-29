//
//  Posts.swift
//  MyDataMechine
//
//  Created by Jaya Sabeen on 29/04/24.
//

import SwiftUI

struct Posts: View {
    
    @Binding var bactoLandingPage: Bool
    var pageLimit: String
    
    var body: some View {
        ZStack {
            BackGround()
            VStack {
                HStack {
                    Button(action: {
                        bactoLandingPage.toggle()
                    }) {
                        MyDataBackButton(title: "arrow.backward")
                    }
                    .padding()
                    Spacer()
                }
                Spacer()
            }
        }
    }
    
}

#Preview {
    Posts(bactoLandingPage: .constant(true), pageLimit: "20")
}
