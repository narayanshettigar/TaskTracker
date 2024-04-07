//
//  ListRowView.swift
//  TaskTracker
//
//  Created by Narayan Shettigar on 07/04/24.
//

import SwiftUI

struct ListRowView: View {
    let item : ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? Color.green : Color.red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .frame(maxWidth: .infinity)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var item1 = ItemModel(title: "first here", isCompleted: true)
    static var item2 = ItemModel(title: "2nd here", isCompleted: false)
    
    static var previews: some View {
        Group{
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
