//
//  LogInView.swift
//  MobileDevApplication_Project
//
//  Created by Phoenix Armand Ani on 2023-03-24.
//

import SwiftUI
struct WelcomeView: View {
    var body: some View {
            VStack{
                Spacer()
                Text("Welcome, \nFriend")
                    .font(.system(size: 60))
                Spacer()
                
                HStack{
                    Spacer()
                    NavigationLink(destination: SignInView(), label: {
                        Text("Sign In")
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(height: 55)
                            .frame(width: 150)
                            .background(Color.black)
                            .cornerRadius(10)
                    })
                    Spacer()
                    NavigationLink(destination: SignUpView(), label: {
                        Text("Sign Up")
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(height: 55)
                            .frame(width: 150)
                            .background(Color.black)
                            .cornerRadius(10)
                    })
                    Spacer()
                }
            }
        }
    }

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            WelcomeView()
        }
    }
}
