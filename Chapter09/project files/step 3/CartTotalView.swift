//
//  CartTotalView.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/3/20.
//

import SwiftUI

struct CartTotalView: View {
    
    @EnvironmentObject var shoppingCart: ShoppingCart
    
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.baseLightBlue)
                    .frame(height: 70)
                
                HStack {
                    Text("Total:")
                    .foregroundColor(.white)
                    .custom(font: .demibold, size: 28)
                    Spacer()
                    Text("$\(shoppingCart.getOrderTotal(), specifier: "%.2f")")
                        .foregroundColor(.white)
                        .custom(font: .bold, size: 47)
                }
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))

            }
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
        }
        .frame(height: 93)
        .background(Color.clear)

    }
}

struct CartTotalView_Previews: PreviewProvider {
    static var previews: some View {
        CartTotalView()
    }
}
