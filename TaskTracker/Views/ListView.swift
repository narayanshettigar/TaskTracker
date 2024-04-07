//
//  ListView.swift
//  TaskTracker
//
//  Created by Narayan Shettigar on 07/04/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items : [ItemModel] = [
        ItemModel(title: "First item", isCompleted: true),
        ItemModel(title: "2nd item", isCompleted: false),
        ItemModel(title: "3rd item", isCompleted: true),
    ]
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink(destination: AddView()) {
                    Text("Add")
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
}


