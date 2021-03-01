//
//  SignUpViewController.swift
//  Fitness Zest
//
//  Created by Connor Lagana on 3/1/21.
//

import SwiftUI

struct SignUpViewController: View {
    
    @State var name: String = ""
    @State var username: String = ""
    @State var email: String = ""
    @State var pasword: String = ""
    
    var body: some View {
        TextField("Name", text: $name)
        Text("Hello, \(name)!")
    }
}

struct SignUpViewController_Previews: PreviewProvider {
    static var previews: some View {
        SignUpViewController()
    }
}
