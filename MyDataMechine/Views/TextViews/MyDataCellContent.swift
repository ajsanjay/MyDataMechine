//
//  MyDataCellContent.swift
//  MyDataMechine
//
//  Created by Jaya Sabeen on 29/04/24.
//

import SwiftUI

struct MyDataCellContent: View {
    
    let heading: String
    let subHeading: String
    
    var body: some View {
        VStack (alignment: .leading, spacing: -30) {
            MyDataTitleText(hint: heading)
            MyDataHintText(hint: subHeading)
        }
    }
}

#Preview {
    MyDataCellContent(heading: "ID :", subHeading: "1")
}
