//
//  ViewLayoutZStack.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/3/20.
//

import SwiftUI

struct ViewLayoutZStack: View {
    var body: some View {
        ZStack {
            Color.black

            Text("Craig Clayton")
                .foregroundColor(.white)
        }
    }
}

struct ViewLayoutZStack_Previews: PreviewProvider {
    static var previews: some View {
        ViewLayoutZStack()
    }
}
