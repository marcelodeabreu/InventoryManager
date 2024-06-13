//
//  loginPageView.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 13/06/24.
//

import SwiftUI

struct loginPageView: View {
    
    @State private var username: String = ""
    
    @State private var passwordEntry: String = ""
    @State private var passwordReentry: String = ""
    @State private var showPassword: Bool = false
    @State private var passwordSecurityCheckPassed: Bool = false
    
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea()
            
            VStack {
                ReusableText(text: "Enter your account:")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                
                TextField("Username", text: $username)
                    .keyboardType(.asciiCapable)
                    .autocorrectionDisabled(true)
                    .textInputAutocapitalization(.never)
                    .padding(10)
                    .background(Color.white)
                    .cornerRadius(10)
                
                HStack {
                    
                    if showPassword {
                        TextField("Password", text: $passwordEntry)
                    } else {
                        SecureField("Password", text: $passwordEntry)
                    }
                    // Hide/Show password button
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
                
                
                
                
            }
            .padding(30)
        }
    }
}

#Preview {
    loginPageView()
}
