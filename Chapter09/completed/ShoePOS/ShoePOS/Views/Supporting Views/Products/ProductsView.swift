//
//  ProductsView.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/3/20.
//

import SwiftUI

struct ProductsView: View {
    @EnvironmentObject var model: ShoePOSViewModel
    
    var body: some View {
        VStack {
            ProductsHeaderView()
            ProductsContentView()
                .environmentObject(model)
            Spacer()
        }.background(Color.baseLightGrey)

    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}
