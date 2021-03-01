//
//  StartupView.swift
//  Fitness Zest
//
//  Created by Connor Lagana on 3/1/21.
//

import SwiftUI

struct StartupView: View {
    
    let darkBlue = Color.init(red: 73/255, green: 108/255, blue: 217/255)
    let lightBlue = Color.init(red: 125/255, green: 200/255, blue: 235/255)
    
    @State var signUpPresented: Bool = false
    @State var loginPresented: Bool = false
    
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
            LoginButton(detail: $loginPresented, backgroundColor: lightBlue, text: "Login")
                .padding(.bottom, 4)
                .sheet(isPresented: $loginPresented, content: {
                    LoginViewController()
                })
            //Sign up Button
            LoginButton(detail: $signUpPresented, backgroundColor: lightBlue, text: "Sign Up")
                .padding(.bottom)
                .sheet(isPresented: $signUpPresented, content: {
                    SignUpViewController()
                })
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
