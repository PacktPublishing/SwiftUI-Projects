//
//  ViewLayoutVStack.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/3/20.
//

import SwiftUI

struct ViewLayoutVStack: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)

            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
        }
    }
}

struct ViewLayoutVStack_Previews: PreviewProvider {
    static var previews: some View {
        ViewLayoutVStack()
    }
}
