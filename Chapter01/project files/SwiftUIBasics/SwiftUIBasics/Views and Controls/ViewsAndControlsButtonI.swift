//
//  ViewsAndControlsButtonI.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 9/30/20.
//

import SwiftUI

struct ViewsAndControlsButtonI: View {
    var body: some View {
        Button(action: { print("Button tapped") }) {
            Text("Button Label")
        }
    }
}

struct ViewsAndControlsButtonI_Previews: PreviewProvider {
    static var previews: some View {
        ViewsAndControlsButtonI()
    }
}
