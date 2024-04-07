//
//  ItemModel.swift
//  TaskTracker
//
//  Created by Narayan Shettigar on 07/04/24.
//

import Foundation

struct ItemModel : Identifiable {
    let id : String
    var title : String
    var isCompleted : Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
