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
    @State private var showPassword: Bool = false
    
    var body: some View {
        ZStack {
            
            Color.purple
                .ignoresSafeArea()
            
            /*
             
             Circle()
             .position(x: 195, y: 100)
             .foregroundColor(.purple)
             
             */
            
            
            VStack {
                
                ReusableText(text: "LOGIN")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding(30)
                
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
                
                ReusableButton(button: "ENTER")
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    .padding(20)
                
            }
            .padding(30)
        }
    }
}

#Preview {
    loginPageView()
}
