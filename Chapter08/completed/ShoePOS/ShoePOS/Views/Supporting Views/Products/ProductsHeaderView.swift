//
//  ProductsHeaderView.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/3/20.
//

import SwiftUI

struct ProductsHeaderView: View {
    var body: some View {
        HStack {
            Spacer()
            Text("KICKZ STORE")
                .custom(font: .heavy, size: 30)
            Spacer()
            
            Button(action: { }) {
                Image(systemName: "line.horizontal.3.decrease.circle")
                    .font(Font.system(size: 24, weight: .thin))
            }
            .buttonStyle(PlainButtonStyle())
            .foregroundColor(Color.black)
            .padding(.trailing, 15)

        }
        .frame(height: 60)
        .background(Color.white)
        .offset(x: -1)
        .border(Color.baseLightGrey, width: 1)
    }
}

struct ProductsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsHeaderView()
    }
}
