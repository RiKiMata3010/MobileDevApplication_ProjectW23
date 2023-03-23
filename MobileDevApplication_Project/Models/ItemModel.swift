//
//  ItemModel.swift
//  MobileDevApplication_Project
//
//  Created by Phoenix Armand Ani on 2023-03-23.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title : String
    let isCompleted : Bool
}
