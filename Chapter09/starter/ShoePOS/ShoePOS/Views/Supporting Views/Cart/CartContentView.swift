//
//  CartContentView.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/3/20.
//

import SwiftUI

struct CartContentView: View {
    var body: some View {
        Form {
            Section { // (1)
                HStack { // (2)
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
            
            Section { // (1)
                ForEach(0..<3) { _ in // (2)
                    CartItemView()
                }
            }
            .frame(height: 80)
            
            Section {
                HStack { // (1)
                    HStack(spacing: 10) { // (2)
                        Text("Subtotal:")
                            .foregroundColor(.baseDarkGrey)
                            .custom(font: .medium, size: 18)
                    }
                    Spacer()
                    HStack(spacing: 0) { // (3)
                        Text("$999.99")
                            .custom(font: .bold, size: 36)
                            .foregroundColor(.baseLightBlue)
                    }
                }
                
                HStack { // (1)
                    Text("Add shipping") // (2)
                        .custom(font: .medium, size: 18)
                        .foregroundColor(.baseMediumGrey)
                    Spacer()
                    
                    Button(action: { }) { // (3)
                        Image(systemName: "plus.circle")
                            .foregroundColor(.baseMediumGrey)
                    }.buttonStyle(PlainButtonStyle())
                }

                VStack(alignment: .leading) { // (1)
                    Spacer()
                    HStack {  // (2)
                        HStack {
                            Text("FL State Tax:")
                                .foregroundColor(.baseDarkGrey)
                                .custom(font: .medium, size: 18)
                            Text("(6%)")
                                .foregroundColor(.baseMediumGrey)
                        }
                        Spacer()
                        Text("$0.00")
                    }
                    Spacer()
                    HStack { // (3)
                        HStack {
                            Text("County Tax:")
                                .foregroundColor(.baseDarkGrey)
                                .custom(font: .medium, size: 18)
                            Text("(11%)")
                                .foregroundColor(.baseMediumGrey)
                        }
                    }
                    Spacer() // (4)
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
