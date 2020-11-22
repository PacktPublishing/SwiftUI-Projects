//
//  ProductDetail.swift
//  ShoePOS
//
//  Created by Craig Clayton on 9/1/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct ProductDetail: View {
    @EnvironmentObject var model: ShoePOSViewModel
    let product: Product

    
    var body: some View {
        ZStack {
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
                Button(action: { model.isProductDetailVisible.toggle() }) {
                    Image(systemName: "xmark.circle.fill")
                        .font(.system(size: 24, weight: .heavy))
                        .offset(x: 10, y: -10)
                }.buttonStyle(PlainButtonStyle())
                
                VStack(spacing: 15) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10).fill(Color.white)
                            .frame(height: 120)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .cornerRadius(10)
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text(product.productName)
                                    .multilineTextAlignment(.leading)
                                    .lineLimit(2)
                                    .custom(font: .demibold, size: 34)
                                Spacer()
                                VStack(alignment: .leading) {
                                    Text("STYLE:")
                                        .custom(font: .bold, size: 12)
                                    Text(product.productNo).custom(font: .bold, size: 18)
                                }
                            }
                            .padding(.leading)
                            .frame(height: 120)
                            
                            Spacer()
                           
                            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .center)) {
                                Image(uiImage: product.productImage)
                                    .resizable()
                                    .frame(width: 340, height: 180)
                                    .offset(y: -20)
                                
                                Text("$\(product.price, specifier: "%.2f")")
                                    .padding(6)
                                    .background(Color.baseLightBlue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10, corners: [.topLeft, .bottomLeft])
                                    .custom(font: .bold, size: 24)
                            }
                        }
                    }
                    .frame(height: 120)
                    .padding(.horizontal, 10)
                    .padding(.top, 50)
                    
                    ScrollView(showsIndicators: false) {
                        LazyVGrid(columns: [GridItem(.adaptive(minimum: 156), spacing: 5)], spacing: 5) {
                            ForEach(product.sizes) { item in
                                SizeCartItemView(item: CartItem(product: product, size: item, quantity: 0))
                            }
                        }
                        .padding(.horizontal, 10)
                    }
                }.padding(.bottom)
            }
            .background(Color.baseLightGrey)
            .padding(.horizontal, 38)
            .padding(.top, 50)
            .padding(.bottom, 50)
        }
        .background(VibrancyBackground())
    }
}

struct ProductDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetail(product: Product.default).previewLayout(.fixed(width: 1112, height: 834))
    }
}
