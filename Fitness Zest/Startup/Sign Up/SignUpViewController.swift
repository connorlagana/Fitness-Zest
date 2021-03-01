//
//  SignUpViewController.swift
//  Fitness Zest
//
//  Created by Connor Lagana on 3/1/21.
//

import SwiftUI
import Firebase

class UserViewModel: ObservableObject {
  // Input
  @Published var username = ""
  @Published var password = ""
  @Published var passwordAgain = ""

  // Output
  @Published var isValid = false
}

struct SignUpViewController: View {
    
    @ObservedObject private var userViewModel = UserViewModel()

    var body: some View {
      Form {
        Section {
          TextField("Username", text: $userViewModel.username)
            .autocapitalization(.none)
          }
          Section {
            SecureField("Password", text: $userViewModel.password)
            SecureField("Password again", text: $userViewModel.passwordAgain)
         }
         Section {
           Button(action: { }) {
             Text("Sign up")
           }.disabled(!userViewModel.valid)
         }
       }
    }
}

struct SignUpViewController_Previews: PreviewProvider {
    static var previews: some View {
        SignUpViewController()
    }
}
