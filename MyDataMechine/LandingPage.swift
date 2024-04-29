//
//  LandingPage.swift
//  MyDataMechine
//
//  Created by Jaya Sabeen on 29/04/24.
//

import SwiftUI

struct LandingPage: View {
    
    @State private var userInput: String = ""
    @State var isPresentingPosts: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                BackGround()
                VStack {
                    MYDataHeadingText(text: "Welcome User")
                    DisplayIcon(systemImage: "person.circle")
                    MyDataHintText(hint: "Input number of pages for pagination")
                    MyDataTextField(text: $userInput, placeholder: "Input page Count Here")
                        .frame(width: 220, height: 50)
                        .padding()
                    Button(action: {
                        if userInput.isEmpty {
                            
                        } else {
                            isPresentingPosts.toggle()
                        }
                    }) {
                        MyDataButton(title: "Continue")
                    }
                }
            }
        }
        .fullScreenCover(isPresented: $isPresentingPosts, content: {
            Posts(bactoLandingPage: $isPresentingPosts, pageLimit: userInput)
        })
    }
    
}

#Preview {
    LandingPage()
}
