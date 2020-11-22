//
//  ViewsAndControlsResizableImage.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 9/30/20.
//

import SwiftUI

struct ViewsAndControlsResizableImage: View {
    var body: some View {
        Image("lebron-james-full")
            .resizable()
            .frame(width: 124, height: 92)
    }
}

struct ViewsAndControlsResizableImage_Previews: PreviewProvider {
    static var previews: some View {
        ViewsAndControlsResizableImage()
    }
}
