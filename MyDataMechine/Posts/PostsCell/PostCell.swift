//
//  PostCell.swift
//  MyDataMechine
//
//  Created by Jaya Sabeen on 29/04/24.
//

import SwiftUI

struct PostCell: View {
    
    let data: Post
    let isList: Bool
    
    var body: some View {
        ZStack {
            if isList {
                VStack (alignment: .leading) {
                    HStack {
                        Spacer()
                        MyDataCellText(heading: "ID :", subHeading: "\(Int(data.id ?? 1))")
                        Spacer()
                    }
                    MyDataCellTextTop(heading: "Title :", subHeading: "\(data.title ?? "")")
                        .padding(.top, -25)
                    MyDataCellTextTop(heading: "Body :", subHeading: "\(data.body ?? "")")
                        .padding(.top, -25)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.textColour, lineWidth: 2)
                )
            } else {
                VStack (alignment: .leading, spacing: -20) {
                    MyDataCellText(heading: "ID :", subHeading: "\(Int(data.id ?? 1))")
                    MyDataCellContent(heading: "Title  :", subHeading: "\(data.title ?? "")")
                    MyDataCellContent(heading: "Body :", subHeading: "\(data.body ?? "")")
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.textColour, lineWidth: 2)
                )
            }
        }
        .listRowBackground(Color.clear)
    }
    
}

#Preview {
    PostCell(data: MockData.data0, isList: true)
}
