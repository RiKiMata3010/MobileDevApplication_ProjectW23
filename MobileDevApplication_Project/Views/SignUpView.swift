//
//  SignUpView.swift
//  MobileDevApplication_Project
//
//  Created by Phoenix Armand Ani on 2023-03-24.
//

import SwiftUI

struct SignUpView: View {
    @State var textInput : String = ""
    @State var passwordInput : String = ""
    var body: some View {
        VStack{
            Form{
                TextField("Enter your Email", text: $textInput)
                TextField("Enter your Password", text: $passwordInput)
            }
            NavigationLink(destination: ListView(), label: {
                Text("Sign Up")
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(width: 350)
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
        .navigationTitle("Sign Up")
    }
    
    struct SignUpView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView{
                SignUpView()
            }
        }
    }
}
