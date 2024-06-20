//
//  ProductModel.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 14/06/24.
//

import Foundation

struct Category: Identifiable {
    let id = UUID()
    var name: String
    var products: [String]
    
    mutating func addProduct(_ product: String) {
        products.append(product)
    }
}







//struct Product: Identifiable {
//    let id = UUID()
//    var name: String
//    var quantity: Int
//    var productSalePrice: Int
//    var productBuyingPrice: Int
//}
