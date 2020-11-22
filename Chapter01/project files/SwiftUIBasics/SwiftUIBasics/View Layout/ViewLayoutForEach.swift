//
//  ViewLayoutForEach.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/3/20.
//

import SwiftUI

struct ViewLayoutForEach: View {

    let coworkers = ["Gabriel Lang", "John Brunelle", "Matthew Arieta", "Wayne Ohmer", "Ralph Dugue", "Alex Burnett", "Craig Heneveld", "Bill Munsell"]

    var body: some View {
        VStack {
            ForEach(coworkers, id: \.self) { name in
                Text(name.uppercased())
            }
        }
        .foregroundColor(.blue)
        .font(.headline)
    }
}


struct ViewLayoutForEach_Previews: PreviewProvider {
    static var previews: some View {
        ViewLayoutForEach()
    }
}
