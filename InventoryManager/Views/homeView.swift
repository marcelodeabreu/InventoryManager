//
//  homeView.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 13/06/24.

import SwiftUI

struct homeView: View {
    
    var Category: [String] = []
    var Product: [String] = []
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.purple, Color.blue], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                .opacity(0.9)
            
            VStack {
                
                ReusableButton(button: "total earnings:")
                    .padding()
                
                ReusableText(text: "$650.00")
                    
            }
        }
    }
}

#Preview {
    homeView()
}
