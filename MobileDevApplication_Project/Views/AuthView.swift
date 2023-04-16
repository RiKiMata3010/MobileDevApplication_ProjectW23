//
//  AuthView.swift
//  MobileDevApplication_Project
//
//  Created by Phoenix Armand Ani on 2023-04-16.
//

import SwiftUI

struct AuthView: View {
    @State private var currentViewShowing : String = "login"
    
    var body: some View {
        if(currentViewShowing == "login"){
            SignInView(currentShowingView: $currentViewShowing)
                .preferredColorScheme(.light)
        }else {
            SignUpView(currentShowingView: $currentViewShowing)
                .preferredColorScheme(.light)
                .transition(.move(edge: .bottom))
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
