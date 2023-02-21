//
//  ContentView.swift
//  MobileDevApplication_Project
//
//  Created by Phoenix Armand Ani on 2023-02-21.
//
// This is the development branch

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Welcome to the new project")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
