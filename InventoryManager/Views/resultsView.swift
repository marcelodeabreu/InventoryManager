//
//  resultsView.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 14/06/24.

import SwiftUI

struct resultsView: View {
    
    @State var monthlyIncome = ""
    @State var dailyIncome = ""
    
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [Color.purple, Color.blue], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                .opacity(0.9)
            
            VStack {
                
                ReusableText(text: "this month: \(monthlyIncome)")
                
                ReusableText(text: "today: \(dailyIncome)")
                
                // CATEGORY & PRODUCTS INCOME
                
                // create list for final results
                
            }
        }
    }
}

#Preview {
    resultsView()
}
