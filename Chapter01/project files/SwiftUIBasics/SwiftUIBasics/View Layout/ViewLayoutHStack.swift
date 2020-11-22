//
//  ViewLayoutHStack.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/3/20.
//

import SwiftUI

struct ViewLayoutHStack: View {
    var body: some View {
        HStack {
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)

            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
        }
    }
}


struct ViewLayoutHStack_Previews: PreviewProvider {
    static var previews: some View {
        ViewLayoutHStack()
    }
}
