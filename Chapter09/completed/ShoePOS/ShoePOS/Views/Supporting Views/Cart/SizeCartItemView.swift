//
//  SizeCartItemView.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/3/20.
//

import SwiftUI

struct SizeCartItemView: View {
    @EnvironmentObject var shoppingCart: ShoppingCart
    let item: CartItem

    var body: some View {
        VStack {
            VStack(spacing: 0) { // (1)
                HStack {
                    HStack(spacing: -6) { // (2)
                        Text("SIZE")
                            .rotationEffect(.degrees(-90))
                            .custom(font: .demibold, size: 18)
                        
                        Text("\(item.size.size, specifier: "%.1f")")
                            .custom(font: .bold, size: 42)
                    }.offset(x: -5)
                    
                    Spacer() // (3)
                    
                    VStack(spacing: -8) { // (4)
                        Text("\(item.size.quantity)")
                            .custom(font: .bold, size: 27)
                            .foregroundColor(.baseLightBlue)
                        
                        Text("QTY")
                            .custom(font: .demibold, size: 12)
                    }
                }
                
                if item.size.quantity > 0 { // 1
                    if shoppingCart.inCart(item: item) { // 2
                        StepperView(items: self.$shoppingCart.items, item: item) // 3
                    } else {
                        ShoePOSButton(title: "ADD TO CART") // 4
                            .onTapGesture { // 5
                                self.shoppingCart.toggleCart(item: item)
                            }
                    }
                } else {
                    ShoePOSButton(title: "ADD TO CART")
                        .opacity(0.3) // 6
                }
                
                Spacer()

            }
        }
        .frame(height: 100)
        .padding(.horizontal, 10)
        .background(Color.white)
        .cornerRadius(10)

    }
}
