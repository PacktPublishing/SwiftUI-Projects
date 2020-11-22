//
//  ViewLayoutHStackSpacer.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/3/20.
//

import SwiftUI

struct ViewLayoutHStackSpacer: View {
    var body: some View {
        HStack {
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            Spacer()

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


struct ViewLayoutHStackSpacer_Previews: PreviewProvider {
    static var previews: some View {
        ViewLayoutHStackSpacer()
    }
}
