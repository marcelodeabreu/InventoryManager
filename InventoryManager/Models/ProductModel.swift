//
//  ProductModel.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 14/06/24.
//

import Foundation

import Foundation

struct Category: Identifiable {
    let id = UUID()
    var name: String
    var products: [Product]
}

struct Product: Identifiable {
    let id = UUID()
    var name: String
    var quantity: Int
    var productPrice = 0
}



/*
struct Product {
    static var ID = UUID()
    static var productName: String = ""
    static var productPrice: Int = 0
    static var category: [String] = [""]
}
*/
