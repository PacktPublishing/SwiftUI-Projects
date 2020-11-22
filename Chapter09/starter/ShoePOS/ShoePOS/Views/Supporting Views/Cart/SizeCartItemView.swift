//
//  SizeCartItemView.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/3/20.
//

import SwiftUI

struct SizeCartItemView: View {
    var body: some View {
        VStack {
            VStack(spacing: 0) { // (1)
                HStack {
                    HStack(spacing: -6) { // (2)
                        Text("SIZE")
                            .rotationEffect(.degrees(-90))
                            .custom(font: .demibold, size: 18)
                        
                        Text("13.0")
                            .custom(font: .bold, size: 42)
                    }.offset(x: -5)
                    
                    Spacer() // (3)
                    
                    VStack(spacing: -8) { // (4)
                        Text("99")
                            .custom(font: .bold, size: 27)
                            .foregroundColor(.baseLightBlue)
                        
                        Text("QTY")
                            .custom(font: .demibold, size: 12)
                    }
                }
                
                ShoePOSButton(title: "ADD TO CART") // (5)
                    .opacity(0.3)
                
                Spacer()
            }
        }
        .frame(height: 100)
        .padding(.horizontal, 10)
        .background(Color.white)
        .cornerRadius(10)

    }
}

struct SizeCartItemView_Previews: PreviewProvider {
    static var previews: some View {
        SizeCartItemView()
    }
}
