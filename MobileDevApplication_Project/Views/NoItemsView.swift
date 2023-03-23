//
//  NoItemsView.swift
//  MobileDevApplication_Project
//
//  Created by Phoenix Armand Ani on 2023-03-23.
//

import SwiftUI

struct NoItemsView: View {
    @State var animate: Bool = false
    
    var body: some View {
        ScrollView{
            VStack(spacing: 10){
                Text("There are no Items")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Ready to start a new task? Come and create one right now!")
                    Spacer()
                NavigationLink(destination: AddView(), label: {
                    Text("Add Task")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .multilineTextAlignment(.center)
        }
        .frame(maxWidth : .infinity, maxHeight: .infinity)
        .padding(40)
        .onAppear(perform: addAnimation)
    }
    func addAnimation(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
            guard !animate else {return}
            withAnimation(.easeInOut){
                animate.toggle()
            }
        }
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NoItemsView()
                .navigationTitle("Title")
        }
    }
}
