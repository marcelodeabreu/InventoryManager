//
//  registerPageView.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 13/06/24.

import SwiftUI

struct registerPageView: View {
    
    @State private var username: String = ""
    
    @State private var passwordEntry: String = ""
    @State private var passwordConfirmation: String = ""
    @State private var showPassword: Bool = false
    @State private var passwordSecurityCheckPassed: Bool = false
    
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [Color.purple, Color.blue], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                .opacity(0.9)
            
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
                .foregroundColor(.gray)
                
                // PASSWORD CONFIRMATION
                
                SecureField("password confirmation", text: $passwordConfirmation)
                    .keyboardType(.asciiCapable)
                    .autocorrectionDisabled(true)
                    .textInputAutocapitalization(.never)
                    .padding(10)
                    .background(Color.white)
                    .cornerRadius(10)
                
                if !passwordEntry.isEmpty, !passwordConfirmation.isEmpty, passwordEntry != passwordConfirmation {
                    Label("Passwords does not match", systemImage: "xmark.circle")
                        .foregroundColor(.red)
                }
                
                NavigationLink(destination: menuView()) {
                    ReusableButton(button: "register")
                        .padding(10)
                        .background(Color.blue)
                        .foregroundColor(.white)
                }
            }
        }
    }
}


#Preview {
    registerPageView()
}
