//
//  ViewLayoutScrollHorizontal.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/3/20.
//

import SwiftUI

struct ViewLayoutScrollHorizontal: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 15) {
                ForEach(0..<10) { _ in
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 50, height: 50)
                }
            }
        }
    }
}


struct ViewLayoutScrollHorizontal_Previews: PreviewProvider {
    static var previews: some View {
        ViewLayoutScrollHorizontal()
    }
}
