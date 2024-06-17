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
            
            LinearGradient(colors: [Color.purple, Color.blue], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Spacer()
                
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
                
                NavigationLink(destination: menuView()) {
                    ReusableButton(button: "ENTER")
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                        .padding(20)
                }
                
                Spacer()
                
                ReusableText(text: "First time around?")
                
                NavigationLink(destination: registerPageView()) {
                    ReusableButton(button: "create account")
                        .padding(20)
                    
                }
                .padding(30)
            }
        }
    }
}

#Preview {
    loginPageView()
}
