//
//  ViewLayoutGroup.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/3/20.
//

import SwiftUI

struct ViewLayoutGroup: View {
    var body: some View {
        VStack {
            Group {
                Text("Gabriel Lang")
                Text("John Brunelle")
                Text("Matthew Arieta")
                Text("Ralph Dugue")
            }
            .foregroundColor(.red)
            .font(.largeTitle)

            Group {
                Text("Alex Burnett")
                Text("Craig Heneveld")
                Text("Bill Munsell")
                Text("Wayne Ohmer")
            }
            .foregroundColor(.red)
            .font(.largeTitle)
        }
    }
}


struct ViewLayoutGroup_Previews: PreviewProvider {
    static var previews: some View {
        ViewLayoutGroup()
    }
}
