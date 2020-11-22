//
//  ShapesRectangle.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/3/20.
//

import SwiftUI

struct ShapesRectangle: View {
    var body: some View {
        Rectangle()
            .fill(Color.red)
            .frame(width: 50, height: 50)
    }
}


struct ShapesRectangle_Previews: PreviewProvider {
    static var previews: some View {
        ShapesRectangle()
    }
}
