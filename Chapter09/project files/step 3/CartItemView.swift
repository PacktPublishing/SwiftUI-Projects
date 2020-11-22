//
//  CartItemView.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/3/20.
//

import SwiftUI

struct CartItemView: View {
    let cartItem: CartItem
    
    var body: some View {
        HStack {
            HStack(spacing: 10) {
                VStack(alignment: .leading) { // (1)
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) { // (2)
                        
                        Image(uiImage: cartItem.product.productImage)
                            .resizable()
                            .frame(width: 107, height: 57)
                        
                        ZStack {
                            Rectangle()
                                .fill(Color.baseLightBlue)
                                .frame(width: 50, height: 30)
                                .cornerRadius(5, corners: [.topRight, .bottomRight])
                            Text("\(cartItem.quantity)")
                                .custom(font: .bold, size: 26)
                                .foregroundColor(.white)
                                .offset(y: 2)
                        }
                        .offset(x: -28, y: -5)
                    }
                    .padding(.leading, 10)
                    Text(cartItem.product.productName.uppercased()) // (3)
                        .custom(font: .demibold, size: 16)
                        .padding(.leading)
                }
            }
            Spacer()
            
            VStack(alignment: .trailing, spacing: 0) { // (1)
                Text("$\(cartItem.product.price * Double(cartItem.quantity), specifier: "%.2f")") // (2)
                    .custom(font: .bold, size: 36)
                    .foregroundColor(.baseLightBlue)
                    .offset(y: 5)
                Spacer()
                Text("SIZE: \(cartItem.size.size, specifier: "%.1f")").custom(font: .bold, size: 23)
                
            }.padding(.trailing, 10)

        }.offset(x: 0)
    }
}

