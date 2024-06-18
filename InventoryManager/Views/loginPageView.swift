//
//  loginPageView.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 13/06/24.

/*
 ISSUES
 
 1.
 
 2.
 
 */


import SwiftUI

struct loginPageView: View {
    
    @State private var username: String = ""
    
    @State private var passwordEntry: String = ""
    @State private var showPassword: Bool = false
    
    var body: some View {
        
        
        ZStack {
            
            LinearGradient(colors: [Color.purple, Color.blue], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                .opacity(0.9)
            
            VStack {
                
                Spacer()
                
                ReusableText(text: "LOGIN")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding(10)
                
                TextField("username", text: $username)
                    .keyboardType(.asciiCapable)
                    .autocorrectionDisabled(true)
                    .textInputAutocapitalization(.never)
                    .padding(10)
                    .background(Color.white)
                    .cornerRadius(10)
                
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
                
                NavigationLink(destination: menuView()) {
                    ReusableButton(button: "ENTER")
                        .padding(10)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        
                }
                .padding(10)
                
                Spacer()
                
                ReusableText(text: "First time around?")
                
                NavigationLink(destination: registerPageView()) {
                    ReusableButton(button: "create account")
                        .padding(10)
                        .background(Color.blue)
                        .foregroundColor(.white)
                }
                .padding(30)
            }
        }
    }
}

#Preview {
    loginPageView()
}
