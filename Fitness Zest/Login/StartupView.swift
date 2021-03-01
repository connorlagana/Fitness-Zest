//
//  StartupView.swift
//  Fitness Zest
//
//  Created by Connor Lagana on 3/1/21.
//

import SwiftUI

struct StartupView: View {
    
    private func login() {
        print("logging in")
    }
    
    private func signUp() {
        print("signing up")
    }
    
    let darkBlue = Color.init(red: 73/255, green: 108/255, blue: 217/255)
    let lightBlue = Color.init(red: 125/255, green: 200/255, blue: 235/255)
    
    var body: some View {
        VStack {
            Spacer()
            Image("fitnessBG")
                .resizable()
                .frame(height: 400)
                .scaledToFit()
            Spacer()
            Text("Energize your life!")
                .foregroundColor(.white)
                .font(.system(size: 36))
                .fontWeight(.bold)
//                .padding()
                .padding(.bottom, 4)
            Text("Strive for progress, not for perfection")
                .foregroundColor(.white)
                .font(.system(size: 18))
                .fontWeight(.regular)
            Spacer()
            //Login Button
            LoginButton(backgroundColor: lightBlue, text: "Login", action: login)
                .padding(.bottom, 4)
            //Sign up Button
            LoginButton(backgroundColor: lightBlue, text: "Sign Up", action: signUp)
                .padding(.bottom)
            
        }
        .padding()
        .background(darkBlue)
        .ignoresSafeArea(edges: .all)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        StartupView()
    }
}
