//
//  CartContentView.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/3/20.
//

import SwiftUI

struct CartContentView: View {
    
    @EnvironmentObject var shoppingCart: ShoppingCart
    
    var body: some View {
        Form {
            Section {
                HStack {
                    Image(systemName: "person.circle")
                        .foregroundColor(.baseMediumGrey)
                        .font(Font.system(size: 54, weight: .ultraLight))
                    Text("Add Customer")
                        .custom(font: .medium, size: 18)
                    Spacer()
                    Image(systemName: "plus.circle")
                }
            }
            .frame(height: 58)

            Section {
                ForEach(shoppingCart.shoppingCartItems()) { cart in
                    CartItemView(cartItem: cart)
                }
            }
            .frame(height: 80)

            Section {
                HStack {
                    HStack(spacing: 10) {
                        Text("Subtotal:")
                            .foregroundColor(.baseDarkGrey)
                            .custom(font: .medium, size: 18)
                    }
                    Spacer()
                    HStack(spacing: 0) {
                        Text("$\(shoppingCart.total, specifier: "%.2f")")
                            .custom(font: .bold, size: 36)
                            .foregroundColor(.baseLightBlue)
                    }
                }

                HStack {
                    Text("Add shipping")
                        .custom(font: .medium, size: 18)
                        .foregroundColor(.baseMediumGrey)
                    Spacer()
                    
                    Button(action: { }) {
                        if shoppingCart.isShippingAdded {
                            Text("$0.00")
                        }
                        
                        Image(systemName: shoppingCart.isShippingAdded ? "minus.circle" : "plus.circle")
                            .foregroundColor(.baseMediumGrey)
                    }.buttonStyle(PlainButtonStyle())
                }

                VStack(alignment: .leading) {
                    Spacer()
                    HStack {
                        HStack {
                            Text("FL State Tax:")
                                .foregroundColor(.baseDarkGrey)
                                .custom(font: .medium, size: 18)
                            Text("(6%)")
                                .foregroundColor(.baseMediumGrey)
                        }
                        Spacer()
                        Text("$\(shoppingCart.getTaxSum(), specifier: "%.2f")")
                    }
                    Spacer()
                    HStack {
                        HStack {
                            Text("County Tax:")
                                .foregroundColor(.baseDarkGrey)
                                .custom(font: .medium, size: 18)
                            Text("(11%)")
                                .foregroundColor(.baseMediumGrey)
                        }
                    }
                    Spacer()
                }.frame(height: 80)
            }
        }
    }
}

struct CartContentView_Previews: PreviewProvider {
    static var previews: some View {
        CartContentView()
    }
}
