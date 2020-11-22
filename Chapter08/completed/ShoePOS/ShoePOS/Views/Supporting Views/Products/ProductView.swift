//
//  ProductView.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/3/20.
//

import SwiftUI

struct ProductView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Rectangle()
                .foregroundColor(Color.white)
                .frame(minWidth: 200)
                .frame(height: 110)
                .cornerRadius(10)
            
            VStack(spacing: 0) {
                Image("shoe-1")
                    .resizable()
                    .frame(width: 188, height: 100)
                VStack(spacing: -8) {
                    Text("Nike Fury")
                        .custom(font: .demibold, size: 18.0)
                    Text("$125.00")
                        .foregroundColor(.baseLightBlue)
                        .custom(font: .bold, size: 29.0)
                }
            }
            .frame(height: 100)
            .padding(.bottom, 25)
            .padding(.horizontal, 5)
            .background(Color.clear)
        }

    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}
