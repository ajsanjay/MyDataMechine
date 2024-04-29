//
//  Loader.swift
//  MyDataMechine
//
//  Created by Jaya Sabeen on 29/04/24.
//

import SwiftUI

struct Loader: View {
    var body: some View {
        ZStack {
            Color.black.opacity(0.3).edgesIgnoringSafeArea(.all)
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
                .scaleEffect(2, anchor: .center)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    Loader()
}
