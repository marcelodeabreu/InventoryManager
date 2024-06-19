//
//  productsViewModel.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 18/06/24.
//

import Combine
import Foundation

class CategoryViewModel: ObservableObject {
    @Published var categories: [Category] = []
    
    func addProduct(to category: Category, product: Product) {
        if let index = categories.firstIndex(where: { $0.id == category.id }) {
            categories[index].products.append(product)
        }
    }
    
    func dailyIncomeResult() {
        
    }
    
    func monthlyIncomeResult() {
        
    }
    
    func totalEarningsResult() {
        
    }
    
    
    
    
}


