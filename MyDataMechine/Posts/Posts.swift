//
//  Posts.swift
//  MyDataMechine
//
//  Created by Jaya Sabeen on 29/04/24.
//

import SwiftUI

struct Posts: View {
    
    @StateObject var viewModel = PostsViewModel()
    @Binding var bactoLandingPage: Bool
    @Binding var getCount: Int
    @State private var increaseBy: Int = 0
    
    var body: some View {
        ZStack {
            BackGround()
            VStack {
                if viewModel.isLoading {
                    Loader()
                } else {
                    HStack {
                        Button(action: {
                            bactoLandingPage.toggle()
                        }) {
                            MyDataBackButton(title: "arrow.backward")
                        }
                        .padding(.leading, 4)
                        MyDataTitleText(hint: "Displaying Post of \(viewModel.posts.count < viewModel.postCount ? viewModel.posts.count : viewModel.postCount) out of \(viewModel.posts.count)")
                            .padding()
                        Button(action: {
                            viewModel.isList.toggle()
                        }) {
                            MyDataBackButton(title: viewModel.isList ? "list.dash" : "circle.grid.3x3")
                        }
                        .padding()
                    }
                    .padding(.top, -20)
                    if viewModel.isList {
                        List(viewModel.posts.prefix(viewModel.postCount), id: \.id) { post in
                            PostCell(data: post, isList: viewModel.isList)
                        }
                        .listStyle(PlainListStyle())
                        .background(Color.clear)
                        .padding(.top, -20)
                    } else {
                        ScrollView {
                            LazyVGrid(columns: viewModel.columns) {
                                ForEach(viewModel.posts.prefix(viewModel.postCount), id: \.id) { post in
                                    PostCell(data: post, isList: viewModel.isList)
                                        .frame(height: screenHeight * 0.3)
                                        .aspectRatio(1.5, contentMode: .fit)
                                }
                            }
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                        }
                        .padding(.top, -20)
                    }
                    if !(viewModel.postCount == viewModel.posts.count) {
                        Button (action: {
                            viewModel.postCount += increaseBy
                            if viewModel.postCount > viewModel.posts.count {
                                viewModel.postCount = viewModel.posts.count
                            }
                        }) {
                            MyDataButton(title: "Load More")
                                .padding(.bottom, -6)
                        }
                    }
                    
                }
            }
        }
        .onAppear() {
            increaseBy = getCount
            viewModel.postCount = getCount
            viewModel.fetchPosts()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
    
}

#Preview {
    Posts(bactoLandingPage: .constant(true), getCount: .constant(20))
}
