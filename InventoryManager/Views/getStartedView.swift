//
//  getStartedView.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 13/06/24.

/*
 ISSUES
 
 1. "get started" button background size (padding conflicting)
 
 2.
 
 */

import SwiftUI

struct getStartedView: View {
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                LinearGradient(colors: [Color.purple, Color.blue], startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.9)
                
                VStack {
                    ReusableText(text: "Inventory Manager")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    ReusableText(text: "Inventory Manager is your solution for effortless and efficient inventory tracking. Manage your products, finances and streamline your inventory processes, whether you're a small business owner, a retailer or managing a large warehouse.")
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                    Spacer()
                    
                    NavigationLink(destination: loginPageView()) {
                        ReusableButton(button: "Get Started!")
                            .padding(10)
                            .background(Color.blue)
                            .foregroundColor(.white)
                    }
                }
                .padding(20)
            }
        }
    }
}

#Preview {
    getStartedView()
}
