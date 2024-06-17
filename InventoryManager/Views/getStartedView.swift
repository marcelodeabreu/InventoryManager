//
//  getStartedView.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 13/06/24.
//

import SwiftUI

struct getStartedView: View {
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                LinearGradient(colors: [Color.purple, Color.blue], startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    ReusableText(text: "Inventory Manager")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    ReusableText(text: "Inventory Manager is your ultimate solution for effortless and efficient inventory tracking. Manage your products, finances and streamline your inventory processes, whether you're a small business owner, a retailer, or managing a large warehouse")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    Spacer()
                    
                    NavigationLink(destination: loginPageView()) {
                        ReusableButton(button: "Get Started!")
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                            .padding(.horizontal, 20)
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
