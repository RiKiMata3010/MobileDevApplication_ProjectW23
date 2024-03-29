//
//  ItemModel.swift
//  MobileDevApplication_Project
//
//  Created by Phoenix Armand Ani on 2023-03-23.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let id: String
    let title : String
    let isCompleted : Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool){
        self.id = UUID().uuidString
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updatedCompletion()-> ItemModel{
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
