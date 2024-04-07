//
//  ItemModel.swift
//  TaskTracker
//
//  Created by Narayan Shettigar on 07/04/24.
//

import Foundation

struct ItemModel : Identifiable {
    let id : String = UUID().uuidString
    var title : String
    var isCompleted : Bool
}
