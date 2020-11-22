//
//  ViewsAndControlsButtonII.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 9/30/20.
//

import SwiftUI

struct ViewsAndControlsButtonII: View {
    var body: some View {
        Button(action: { print("Button tapped") }) {
            Text("Button Label")
        }
        .padding(10)
        .background(Color.red)
        .foregroundColor(.white)
    }
}

struct ViewsAndControlsButtonII_Previews: PreviewProvider {
    static var previews: some View {
        ViewsAndControlsButtonII()
    }
}
