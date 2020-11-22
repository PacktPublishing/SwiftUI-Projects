//
//  CartHeaderView.swift
//  ShoePOS
//
//  Created by Craig Clayton on 8/9/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CartHeaderView: View {
    @EnvironmentObject var shoppingCart: ShoppingCart
    
    var body: some View {
        HStack {
            Spacer()
            Text("CART (\(shoppingCart.quantity))")
                .custom(font: .demibold, size: 24)
            Spacer()
            Image(systemName: "trash")
                .font(Font.system(size: 24, weight: .thin))
        }
        .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
        .frame(height: 60)
        .background(Color.white)
        .border(Color.baseLightGrey, width: 1)
        .offset(x: -1)
    }
}

