//  ProductModel.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 14/06/24.

import Foundation

struct Product: Hashable, Identifiable {
    let id = UUID()
    let date: Date
    var name: String
    var category: String
    var quantity: Int
    var productSalePrice: Float
    var productBuyingPrice: Float
    var customDetails: [String]
}

struct Category: Identifiable {
    let id: UUID
    var name: String
}


// <<< MOCK DATA >>>

struct MockData {
    
    static let calendar = Calendar.current
    
    static let products = [Product(date: .now,
                                   name: "USB-C cable",
                                   category: "Eletronics",
                                   quantity: 5,
                                   productSalePrice: 2.5,
                                   productBuyingPrice: 1.75,
                                   customDetails: ["1 meter"]),
                           
                           Product(date: calendar.date(byAdding: .day, value: 20, to: .now)!,
                                   name: "HDMI cable",
                                   category: "Eletronics",
                                   quantity: 3,
                                   productSalePrice: 9.90,
                                   productBuyingPrice: 7.00,
                                   customDetails: ["2 meters"])]
    
}
