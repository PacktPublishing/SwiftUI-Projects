//
//  ViewLayoutScrollVertical.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/3/20.
//

import SwiftUI

struct ViewLayoutScrollVertical: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                ForEach(0..<20) { _ in
                    Rectangle()
                        .frame(width: 50, height: 50)
                }
            }
        }
    }
}

struct ViewLayoutScrollVertical_Previews: PreviewProvider {
    static var previews: some View {
        ViewLayoutScrollVertical()
    }
}
