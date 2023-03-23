//
//  ListRowView.swift
//  MobileDevApplication_Project
//
//  Created by Phoenix Armand Ani on 2023-03-22.
//

import SwiftUI

struct ListRowView: View {
    
    let title : String
    
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "Title 1")
    }
}
