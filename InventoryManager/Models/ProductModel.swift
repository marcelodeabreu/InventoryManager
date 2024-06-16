//
//  ProductModel.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 14/06/24.
//

import Foundation
import SwiftUI

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
