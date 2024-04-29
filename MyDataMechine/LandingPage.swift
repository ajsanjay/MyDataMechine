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
    @State var count: Int = 0
    @State var alertItem: AlertItem?
    @State private var isKeyboardHidden: Bool = true
    
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
                            alertItem = AlertContext.PageCountEmpty
                        } else if userInput == "1" {
                            alertItem = AlertContext.PageCountGreaterthan1
                        } else {
                            count = Int(userInput) ?? 0
                            isPresentingPosts.toggle()
                        }
                    }) {
                        MyDataButton(title: "Continue")
                    }
                }
            }
        }
        .fullScreenCover(isPresented: $isPresentingPosts, content: {
            Posts(bactoLandingPage: $isPresentingPosts, getCount: $count)
        })
        .alert(item: $alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
        .onTapGesture {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
        .ignoresSafeArea(isKeyboardHidden ? .keyboard : [])
    }
    
}

#Preview {
    LandingPage()
}
