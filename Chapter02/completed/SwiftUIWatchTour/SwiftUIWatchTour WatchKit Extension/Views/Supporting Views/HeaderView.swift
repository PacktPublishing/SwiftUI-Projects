//
//  HeaderView.swift
//  WaterTraker
//
//  Created by Craig Clayton on 11/15/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String

    var body: some View {
        HStack(spacing: 0) {
            Text(title.uppercased())
                .fontWeight(.heavy)
            Text(subtitle.uppercased())
                .fontWeight(.thin)
        }
        .foregroundColor(Color.red)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "BAR", subtitle: "CHART")
    }
}
