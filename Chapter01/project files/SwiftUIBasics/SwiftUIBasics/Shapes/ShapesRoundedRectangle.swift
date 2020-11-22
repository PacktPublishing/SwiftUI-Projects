//
//  ShapesRoundedRectangle.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/3/20.
//

import SwiftUI

struct ShapesRoundedRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .fill(Color.red)
            .frame(width: 200, height: 50)
    }
}


struct ShapesRoundedRectangle_Previews: PreviewProvider {
    static var previews: some View {
        ShapesRoundedRectangle()
    }
}
