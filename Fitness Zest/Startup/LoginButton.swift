//
//  LoginButton.swift
//  Fitness Zest
//
//  Created by Connor Lagana on 3/1/21.
//

import SwiftUI

struct LoginButton: View {
    
    @Binding var detail: Bool
    
    var backgroundColor: Color
    var text: String
    
    var body: some View {
        Button(action: {
            detail.toggle()
        }, label: {
            Text("\(text)")
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .font(.system(size: 18))
                .frame(width: 250, height: 60, alignment: .center)
                .background(backgroundColor)
                .cornerRadius(500)
        })
    }
}
