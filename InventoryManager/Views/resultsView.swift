//
//  resultsView.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 14/06/24.

import SwiftUI

struct resultsView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [Color.purple, Color.blue], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                .opacity(0.9)
            
        }
    }
}

#Preview {
    resultsView()
}
