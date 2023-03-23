//
//  ListView.swift
//  MobileDevApplication_Project
//
//  Created by Phoenix Armand Ani on 2023-03-22.
//

import SwiftUI

struct ListView: View {
    
    @State var items : [String] = [
        "Title 1",
        "Title 2",
        "Title 3"
    ]
    
    var body: some View {
        List{
            ForEach(items, id:\.self)
            { item in ListRowView(title: item)}
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

