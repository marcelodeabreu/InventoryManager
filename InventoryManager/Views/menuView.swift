//
//  menuView.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 14/06/24.

/*
 ISSUES
 
 1. Selected tab icon does not appear.
 
 2.
 
 */

import SwiftUI

struct menuView: View {
    var body: some View {
        TabView {
            
            homeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            productsView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Products")
                }
            
            resultsView()
                .tabItem {
                    Image(systemName: "chart.bar")
                    Text("Results")
                }
            
        }
        
        
    }
}

#Preview {
    menuView()
}
