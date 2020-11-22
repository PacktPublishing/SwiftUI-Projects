//
//  ShoePOSButton.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/3/20.
//

import SwiftUI

struct ShoePOSButton: View {
    let title: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.baseLightBlue)
                .cornerRadius(6)
                .frame(height: 34)
            Text(title)
                .custom(font: .bold, size: 24)
                .foregroundColor(.white)
        }

    }
}

struct ShoePOSButton_Previews: PreviewProvider {
    static var previews: some View {
        ShoePOSButton(title: "ADD TO CART")
    }
}
