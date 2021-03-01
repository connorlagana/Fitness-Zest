//
//  SignUpButton.swift
//  Fitness Zest
//
//  Created by Connor Lagana on 3/1/21.
//

import SwiftUI

struct SignUpButton: View {
    
    var backgroundColor: Color
    
    var body: some View {
        Button(action: {
            //Login with firebase here
            print("Signing Up...")
        }, label: {
            Text("Sign Up")
                .foregroundColor(.white)
                .frame(width: 250, height: 60, alignment: .center)
                .background(backgroundColor)
                .cornerRadius(500)
        })
    }
}

struct SignUpButton_Previews: PreviewProvider {
    static var previews: some View {
        SignUpButton(backgroundColor: Color.orange)
    }
}
