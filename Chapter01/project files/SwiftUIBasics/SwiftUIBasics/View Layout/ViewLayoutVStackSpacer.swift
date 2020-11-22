//
//  ViewLayoutVStackSpacer.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/3/20.
//

import SwiftUI

struct ViewLayoutVStackSpacer: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            Spacer()
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
        }
    }
}


struct ViewLayoutVStackSpacer_Previews: PreviewProvider {
    static var previews: some View {
        ViewLayoutVStackSpacer()
    }
}
