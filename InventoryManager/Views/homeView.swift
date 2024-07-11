//  homeView.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 13/06/24.

import SwiftUI

struct homeView: View {
    
    @State var Category: [String] = []
    @State var Product: [String] = []
    @State var totalEarnings = ""
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.purple, Color.blue], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                .opacity(0.9)
            
            VStack {
                
                ReusableButton(button: "TOTAL EARNINGS") // only total earnings will appear at homeView
                    .padding()
                
                ReusableText(text: "$\(totalEarnings)")
                    
            }
        }
    }
}

#Preview {
    homeView()
}
