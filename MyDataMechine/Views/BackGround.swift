//
//  BackGround.swift
//  MyDataMechine
//
//  Created by Jaya Sabeen on 29/04/24.
//

import SwiftUI

struct BackGround: View {
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.bgGradientTop, Color.bgGradientBottom]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    BackGround()
}
