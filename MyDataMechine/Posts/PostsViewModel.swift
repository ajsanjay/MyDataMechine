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
    let columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible())]

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
                    } catch {
                        self.error = error
                    }
                }
            }
        }.resume()
    }
}
