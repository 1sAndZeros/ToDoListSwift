//
//  ListRowView.swift
//  ToDoList
//
//  Created by Rikie Patrick on 03/10/2023.
//

import SwiftUI

struct ListRowView: View {
    
    @State var item: ItemModel
    
    var body: some View {
        HStack{
            if item.isCompleted {
                Text(item.title).strikethrough().font(.body)
            } else {
                Text(item.title).font(.body)
            }
            Toggle(isOn: $item.isCompleted){

            }.toggleStyle(.switch)
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(item: ItemModel(title: "Gym", isCompleted: false))
    }
}
