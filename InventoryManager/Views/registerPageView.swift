//
//  registerPageView.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 13/06/24.
//

import SwiftUI

struct registerPageView: View {
    
    @State private var username: String = ""
    
    @State private var passwordEntry: String = ""
    @State private var passwordConfirmation: String = ""
    @State private var showPassword: Bool = false
    @State private var passwordSecurityCheckPassed: Bool = false
    
    var body: some View {
        
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            VStack {
                
                // USERNAME
                
                TextField("username", text: $username)
                    .keyboardType(.asciiCapable)
                    .autocorrectionDisabled(true)
                    .textInputAutocapitalization(.never)
                    .padding(10)
                    .background(Color.white)
                    .cornerRadius(10)
                
                // PASSWORD ENTRY
                
                HStack {
                    
                    if showPassword {
                        TextField("password", text: $passwordEntry)
                    } else {
                        SecureField("password", text: $passwordEntry)
                    }
                    
                    Button {
                        self.showPassword.toggle()
                    } label: {
                        Image(systemName: self.showPassword ? "eye" : "eye.slash")
                    }
                }
                .keyboardType(.asciiCapable)
                .autocorrectionDisabled(true)
                .textInputAutocapitalization(.never)
                .padding(10)
                .background(Color.white)
                .cornerRadius(10)
                .foregroundColor(.black)
                
                // PASSWORD CONFIRMATION
                
                SecureField("password confirmation", text: $passwordConfirmation)
                    .keyboardType(.asciiCapable)
                    .autocorrectionDisabled(true)
                    .textInputAutocapitalization(.never)
                    .padding(10)
                    .background(Color.white)
                    .cornerRadius(10)
                
                if !passwordEntry.isEmpty,
                   !passwordConfirmation.isEmpty,
                   passwordEntry != passwordConfirmation {
                    Label("Passwords does not match", systemImage: "xmark.circle")
                        .foregroundColor(.red)
                }
                
                NavigationLink(destination: menuView()) {
                    ReusableButton(button: "register")
                }
            }
        }
    }
}


#Preview {
    registerPageView()
}
