//
//  CellBG.swift
//  MyDataMechine
//
//  Created by Jaya Sabeen on 29/04/24.
//

import SwiftUI

struct CellBG: View {
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.cellBGtop, Color.cellBgBottom]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
    
}

#Preview {
    CellBG()
}
