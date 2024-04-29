//
//  MyDataCellText.swift
//  MyDataMechine
//
//  Created by Jaya Sabeen on 29/04/24.
//

import SwiftUI

struct MyDataCellText: View {
    
    let heading: String
    let subHeading: String
    
    var body: some View {
        VStack {
            HStack {
                MyDataTitleText(hint: heading)
                MyDataHintText(hint: subHeading)
                    .padding(.leading, -30)
            }
        }
    }
    
}

struct MyDataCellTextTop: View {
    
    let heading: String
    let subHeading: String
    
    var body: some View {
        VStack {
            HStack (alignment: .top) {
                MyDataTitleText(hint: heading)
                    .frame(width: heading == "Title :" ? 80 : 85)
                MyDataHintText(hint: subHeading)
                    .padding(.leading, -30)
                Spacer()
            }
        }
    }
    
}

#Preview {
    MyDataCellTextTop(heading: "Title :", subHeading: "1")
}
