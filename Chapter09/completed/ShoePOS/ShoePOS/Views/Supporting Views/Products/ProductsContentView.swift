//
//  ProductsContentView.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/3/20.
//

import SwiftUI

struct ProductsContentView: View {
    @EnvironmentObject var model: ShoePOSViewModel
    
    var body: some View {
        ZStack {
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 200), spacing: 10)], spacing: 34) {
                    ForEach(model.products) { product in
                        ProductView(product: product).onTapGesture {
                             model.isProductDetailVisible.toggle()
                            model.selectedProduct = product
                        }

                    }

                }.padding(.top, 20)
                .padding(.horizontal, 10)
            }
            
            if let product = model.selectedProduct {
                ProductDetail(product: product)
                    .environmentObject(model)
                    .opacity(model.isProductDetailVisible ? 1 : 0)
                    .animation(.default)
            }

        }
    }
}

struct ProductsContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsContentView()
    }
}
