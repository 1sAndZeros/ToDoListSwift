//
//  ItemModel.swift
//  ToDoList
//
//  Created by Rikie Patrick on 04/10/2023.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    var isCompleted: Bool
}
