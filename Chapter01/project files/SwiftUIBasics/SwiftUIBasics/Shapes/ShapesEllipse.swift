//
//  ShapesEllipse.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/3/20.
//

import SwiftUI

struct ShapesEllipse: View {
    var body: some View {
        Ellipse()
            .fill(Color.red)
            .frame(width: 100, height: 50)
    }
}


struct ShapesEllipse_Previews: PreviewProvider {
    static var previews: some View {
        ShapesEllipse()
    }
}
