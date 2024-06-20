//
//  productsViewModel.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 18/06/24.
//

import Foundation

class CategoryViewModel: ObservableObject {
    
    @Published var categories: [Category] = []
    

        
    func addProduct(to categoryID: UUID, product: String) {
            if let index = categories.firstIndex(where: { $0.id == categoryID }) {
                categories[index].addProduct(product)
            }
        }
    
    
    
    func dailyIncomeResult() {
        
    }
    
    func monthlyIncomeResult() {
        
    }
    
    func totalEarningsResult() {
        
    }
    
    
    
    
}


