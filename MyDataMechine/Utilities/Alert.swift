//
//  Alert.swift
//  MyDataMechine
//
//  Created by Jaya Sabeen on 30/04/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let PageCountEmpty = AlertItem(title: Text("Page Count Empty"), message: Text("Please input a page count to proceed"), dismissButton: .default(Text("Ok")))
    static let PageCountGreaterthan1 = AlertItem(title: Text("Cannot proceed this count"), message: Text("Please input a count greater than 1"), dismissButton: .default(Text("Ok")))
    static let PageCountGreatergreaterThanTotal = AlertItem(title: Text("Cannot proceed this count"), message: Text("The value enterd is grater than total records so partially loading all details"), dismissButton: .default(Text("Ok")))
}
