//
//  MobileDevApplication_ProjectApp.swift
//  MobileDevApplication_Project
//
//  Created by Phoenix Armand Ani on 2023-02-21.
//

import SwiftUI

@main
struct MobileDevApplication_ProjectApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
