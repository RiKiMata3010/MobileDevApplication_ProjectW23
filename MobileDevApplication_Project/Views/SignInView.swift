//
//  SignInView.swift
//  MobileDevApplication_Project
//
//  Created by Phoenix Armand Ani on 2023-03-24.
//

import SwiftUI
import FirebaseAuth

struct SignInView: View {
    @Binding var currentShowingView : String
    @AppStorage("uid") var userID = ""
    
    @State var textInput : String = ""
    @State var passwordInput: String = ""

// Won't use the validator so the professor can sign up or log-in
//    private func isValidPassword(_ password: String) -> Bool{
//        //min 6 char
//        //1upp char
//        //1sp char
//        //
//        let passwordRegex = NSPredicate(format: "SELF_MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])(?=.*[A-Z]).{6,}$")
//        return passwordRegex.evaluate(with: passwordInput)
//    }
    
    var body: some View {
        VStack{
            Form{
                HStack{
                    Image(systemName: "mail")
                    Spacer()
                    TextField("Enter your Email", text: $textInput)
                    
                    Spacer()
                    
                    if(textInput.count != 0){
                        Image(systemName: textInput.isValidEmail() ? "checkmark" : "xmark")
                    }
                }
                HStack{
                    Image(systemName: "lock")
                    Spacer()
                    TextField("Enter your Password", text: $passwordInput)
                    
                    Spacer()
                    
//                    if(passwordInput.count != 0){
//                        Image(systemName: isValidPassword(passwordInput) ? "checkmark" : "xmark")
//
//                    }
                }
            }
            Button(action:{
                withAnimation{
                    self.currentShowingView = "signup"
                }
            }){
                Text("Don't have an Account?")
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(width: 350)
                    .background(Color.black)
                    .cornerRadius(10)
            }
            Button {
                
                Auth.auth().signIn(withEmail: textInput, password: passwordInput){
                    authResult, error in
                    
                    if let error = error{
                        print(error)
                        return
                    }
                    if let authResult = authResult {
                        print(authResult.user.uid)
                        withAnimation{
                            userID = authResult.user.uid
                        }
                    }
                }
                
            } label: {
                Text("Sign In")
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(width: 350)
                    .background(Color.black)
                    .cornerRadius(10)
            }
            .navigationTitle("Log In")
        }
    }
}
