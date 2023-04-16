//
//  MobileDevApplication_ProjectApp.swift
//  MobileDevApplication_Project
//
//  Created by Phoenix Armand Ani on 2023-02-21.
//

import SwiftUI
import FirebaseCore

@main
struct MobileDevApplication_ProjectApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                WelcomeView()
                AuthView()
                MainListView()
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
