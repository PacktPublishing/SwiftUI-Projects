//
//  ViewsAndControlsTextII.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 9/29/20.
//

import SwiftUI

struct ViewsAndControlsTextII: View {
    var body: some View {
        Text("This is Text")
            .fontWeight(.bold)
            .font(.system(size: 24))
            .foregroundColor(.red)
    }
}

struct ViewsAndControlsTextII_Previews: PreviewProvider {
    static var previews: some View {
        ViewsAndControlsTextII()
    }
}
