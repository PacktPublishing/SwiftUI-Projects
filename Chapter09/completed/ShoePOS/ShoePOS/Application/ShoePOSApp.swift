//
//  ShoePOSApp.swift
//  ShoePOS
//
//  Created by Craig Clayton on 8/9/20.
//

import SwiftUI

@main
struct ShoePOSApp: App {
    let model = ShoePOSViewModel()
    @StateObject private var cart = ShoppingCart()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
                .environmentObject(cart)
                .onAppear {
                    model.fetchAllProducts()
                }
        }
    }
}
