//
//  LoginButton.swift
//  Fitness Zest
//
//  Created by Connor Lagana on 3/1/21.
//

import SwiftUI

struct LoginButton: View {
    var body: some View {
        Button(action: {
            //Login with firebase here
            print("Logging in...")
        }, label: {
            Text("Login")
        })
    }
}

struct LoginButton_Previews: PreviewProvider {
    static var previews: some View {
        LoginButton()
    }
}
