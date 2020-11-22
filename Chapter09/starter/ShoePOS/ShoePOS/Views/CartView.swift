//
//  CartView.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/3/20.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        VStack {
            CartHeaderView()
            CartContentView()
            Spacer()
            CartTotalView()
        }
        .background(Color.baseWhite)
        .frame(width: 417)

    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
