//
//  ListView.swift
//  MobileDevApplication_Project
//
//  Created by Phoenix Armand Ani on 2023-03-22.
//

import SwiftUI

struct ListView: View {
    
    @State var items : [ItemModel] = [
        ItemModel(title: "Title 1 is here", isCompleted: false),
        ItemModel(title: "Second Title", isCompleted: true),
        ItemModel(title: "Third", isCompleted: false)
    ]
    
    var body: some View {
        List{
            ForEach(items)
            { item in ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Task to Do 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}

