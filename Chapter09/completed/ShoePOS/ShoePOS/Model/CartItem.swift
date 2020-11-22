//
//  CartItem.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/20/20.
//

import Foundation

struct CartItem: Identifiable {
    var id = UUID().uuidString
    
    var product: Product
    var size: Size
    var quantity: Int
    var maxQuantity: Int
    
    init(product: Product, size: Size, quantity:Int) {
        self.product = product
        self.size = size
        self.quantity = quantity
        self.maxQuantity = size.quantity
    }
}
