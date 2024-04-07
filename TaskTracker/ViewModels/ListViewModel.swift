//
//  ListViewModel.swift
//  TaskTracker
//
//  Created by Narayan Shettigar on 07/04/24.
//

import Foundation

class ListViewModel : ObservableObject {
    @Published var items : [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems : [ItemModel] = [
            ItemModel(title: "First item", isCompleted: true),
            ItemModel(title: "2nd item", isCompleted: false),
            ItemModel(title: "3rd item", isCompleted: true),
        ]
        
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title : String){
        let newItem : ItemModel = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item : ItemModel){
        if let index = items.firstIndex(where: { $0.id == item.id}){
            items[index] = item.updateCompletion()
        }
    }
}
