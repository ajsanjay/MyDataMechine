//
//  Model.swift
//  MyDataMechine
//
//  Created by Jaya Sabeen on 29/04/24.
//

import Foundation

struct Post: Codable, Identifiable {
    let userId: Int?
    let id: Int?
    let title: String?
    let body: String?
}
