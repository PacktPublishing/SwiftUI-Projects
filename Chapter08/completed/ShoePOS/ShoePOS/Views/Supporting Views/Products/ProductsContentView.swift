//
//  ProductsContentView.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/3/20.
//

import SwiftUI

struct ProductsContentView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 200), spacing: 10)], spacing: 34) {
                ForEach(0..<20) { _ in
                    ProductView()
                }
            }.padding(.top, 20)
            .padding(.horizontal, 10)
        }
    }
}

struct ProductsContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsContentView()
    }
}
