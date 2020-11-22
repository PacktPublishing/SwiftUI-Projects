//
//  ShapesCapsule.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/3/20.
//

import SwiftUI

struct ShapesCapsule: View {
    var body: some View {
        Capsule()
            .fill(Color.red)
            .frame(width: 200, height: 50)
    }
}


struct ShapesCapsule_Previews: PreviewProvider {
    static var previews: some View {
        ShapesCapsule()
    }
}
