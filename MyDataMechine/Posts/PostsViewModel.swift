//
//  PostsViewModel.swift
//  MyDataMechine
//
//  Created by Jaya Sabeen on 29/04/24.
//

import Foundation
import SwiftUI

class PostsViewModel: ObservableObject {
    
    @Published var posts: [Post] = []
    @Published var isLoading: Bool = false
    @Published var error: Error?
    @Published var isList: Bool = false
    @Published var alertItem: AlertItem?
    @Published var postCount: Int = 0
    let columns: [GridItem] = [GridItem(.flexible(), spacing: 10),GridItem(.flexible(), spacing: 10)]

    func fetchPosts() {
        isLoading = true
        URLSession.shared.dataTask(with: URL(string: "https://jsonplaceholder.typicode.com/posts")!) { data, response, error in
            DispatchQueue.main.async {
                self.isLoading = false
                if let error = error {
                    self.error = error
                } else if let data = data {
                    do {
                        self.posts = try JSONDecoder().decode([Post].self, from: data)
                        if self.postCount > self.posts.count {
                            self.alertItem = AlertContext.PageCountGreatergreaterThanTotal
                        }
                    } catch {
                        self.error = error
                    }
                }
            }
        }.resume()
    }
}
