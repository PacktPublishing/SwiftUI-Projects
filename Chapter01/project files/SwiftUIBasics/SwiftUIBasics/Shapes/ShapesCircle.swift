//
//  ShapesCircle.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/3/20.
//

import SwiftUI

struct ShapesCircle: View {
    var body: some View {
        Circle()
            .fill(Color.red)
            .frame(width: 50, height: 50)
    }
}


struct ShapesCircle_Previews: PreviewProvider {
    static var previews: some View {
        ShapesCircle()
    }
}
