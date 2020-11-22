//
//  ShoppingCart.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/20/20.
//

import SwiftUI
import Combine

class ShoppingCart: ObservableObject {
    @Published var quantity: Int = 0 // (1)
    @Published var cartTotal: Double = 0 // (2)
    @Published var items: Dictionary<String, CartItem> = [:] // (3)
    @Published var isShippingAdded: Bool = false // (4)
    // (5)
    @Published var selectedProduct: Product? // (6)
    @Published var selectedSize: Size? // (7)
   
    var total: Double {
        if items.count > 0 {
            var amount: Double = 0
            
            for item in items {
                let price = item.value.product.price
                let quant = item.value.quantity
                amount += price * Double(quant)
            }
            
            return amount
        } else {
            return 0
        }
    }
    
    
    func toggleCart(item: CartItem) {
        if items[item.size.id] == nil {
            items[item.size.id] = CartItem(product: item.product, size: item.size, quantity: 1)
        } else {
            items[item.size.id] = nil
        }
    }
    
    func getTaxSum() -> Double {
        var GST: Double = 0.0
        
        if (total > 0) {
            GST = total * 0.13
        } else {
            return GST
        }
        
        return GST
    }
    
    func shoppingCartItems() -> [CartItem] {
        var products: [CartItem] = []
        DispatchQueue.main.async {
            self.quantity = self.items.values.map { $0.quantity }.reduce(0, +)
        }
        for item in items.values {
            products.append(item)
        }
        return products
    }
    
    func getOrderTotal() -> Double {
        return Double(total + getTaxSum())
    }
    
    func inCart(item: CartItem) -> Bool {
        return items[item.size.id] != nil
    }


}

