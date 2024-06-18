//
//  productsView.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 14/06/24.

import SwiftUI

struct productsView: View {
    
    @State private var selectedCategoryID: UUID?
    
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [Color.purple, Color.blue], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                .opacity(0.9)
            
            VStack {
                
                //         Picker(selection: <#T##Binding<Hashable>#>, content: <#T##() -> View#>, label: <#T##() -> View#>)
                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Add Product")})
                
                
            }
        }
    }
}

#Preview {
    productsView()
}
