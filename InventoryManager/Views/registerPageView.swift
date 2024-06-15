//
//  registerPageView.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 13/06/24.
//

import SwiftUI

struct registerPageView: View {
    var body: some View {
        
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            VStack {
                NavigationLink(destination: menuView()) {
                    ReusableButton(button: "register")
                }
                
                
            }
            
        }
        
    }
}

#Preview {
    registerPageView()
}
