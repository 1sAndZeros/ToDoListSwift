//
//  ContentView.swift
//  ToDoList
//
//  Created by Rikie Patrick on 03/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var newTask: String = ""
    @State var items: [ItemModel] = [
    ItemModel(title: "Go Gym", isCompleted: false),
    ItemModel(title: "Buy Milk", isCompleted: false),
    ItemModel(title: "Catch up with Roberto", isCompleted: true),
    ]
    
    var body: some View {
        VStack {
            Image("Image")
            Text("To Do List 🗒️").font(.largeTitle)
            ForEach(items) {
                item in ListRowView(item: item)
            }
            HStack {
                TextField("Enter new task...", text: $newTask)

                Button(action: {
                    items.append(ItemModel(title: newTask, isCompleted: false))
                    newTask = ""
                }, label: {
                    Text("Add")
                        .padding(.horizontal, 50.0)
                })
                .cornerRadius(10)
            }.frame(height: 50.0)
        }.padding(35)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
