//
//  menuView.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 14/06/24.

/*
 ISSUES
 
 1.
 
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
                    
                    .accentColor(.white)
            
            productsView()
                            .tabItem {
                                Image(systemName: "cart")
                                Text("Products")
                            }
                    
                    .accentColor(.white)
            
            resultsView()
                            .tabItem {
                                Image(systemName: "chart.bar")
                                Text("Results")
                            }
                    }
                    .accentColor(.white)
                
        

    }
}

#Preview {
    menuView()
}
