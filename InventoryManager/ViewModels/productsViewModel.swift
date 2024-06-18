//
//  productsViewModel.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 18/06/24.
//

import Foundation
import SwiftUI

class CategoryViewModel: ObservableObject {
    @Published var categories: [Category]

    init(categories: [Category] = []) {
        self.categories = categories
    }

    func addProduct(to categoryID: UUID, product: Product) {
        if let index = categories.firstIndex(where: { $0.id == categoryID }) {
            categories[index].products.append(product)
        }
    }
}
