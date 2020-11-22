//
//  CartItemView.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/3/20.
//

import SwiftUI

struct CartItemView: View {
    var body: some View {
        HStack {
            HStack(spacing: 10) {
                VStack(alignment: .leading) { // (1)
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) { // (2)
                        
                        Image("shoe-1")
                            .resizable()
                            .frame(width: 107, height: 57)
                        
                        ZStack {
                            Rectangle()
                                .fill(Color.baseLightBlue)
                                .frame(width: 40, height: 30)
                                .cornerRadius(5, corners: [.topRight, .bottomRight])
                            Text("99")
                                .custom(font: .bold, size: 26)
                                .foregroundColor(.white)
                                .offset(y: 2)
                        }
                        .offset(x: -10, y: -5)
                    }
                    .padding(.leading, 10)
                    Text("PRODUCT NAME GOES HERE") // (3)
                        .custom(font: .demibold, size: 16)
                        .padding(.leading)
                }

            }
            Spacer()
            
            VStack(alignment: .trailing, spacing: 0) { // (1)
                Text("$999.99") // (2)
                    .custom(font: .bold, size: 36)
                    .foregroundColor(.baseLightBlue)
                    .offset(y: 5)
                Spacer()
                Text("SIZE: 13.5").custom(font: .bold, size: 23)
                
            }.padding(.trailing, 10)

        }.offset(x: 0)

    }
}

struct CartItemView_Previews: PreviewProvider {
    static var previews: some View {
        CartItemView()
            .previewLayout(.fixed(width: 475, height: 100))
    }
}
