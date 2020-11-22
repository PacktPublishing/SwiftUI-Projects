//
//  ViewLayoutZStackIgnore.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/3/20.
//

import SwiftUI

struct ViewLayoutZStackIgnore: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)

            Text("Craig Clayton")
                .foregroundColor(.white)

            Text("Craig Clayton")
                .foregroundColor(.white)
                .offset(x: 0, y: 100)
        }
    }
}


struct ViewLayoutZStackIgnore_Previews: PreviewProvider {
    static var previews: some View {
        ViewLayoutZStackIgnore()
    }
}
