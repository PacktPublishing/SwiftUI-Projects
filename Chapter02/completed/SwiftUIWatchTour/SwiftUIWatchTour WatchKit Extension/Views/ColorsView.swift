//
//  ColorsView.swift
//  SwiftUIWatchTour WatchKit Extension
//
//  Created by Craig Clayton on 12/7/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct ColorsView: View {
    @State var colors: [ColorModel] = [ ColorModel(name: "Red"),
                                        ColorModel(name: "White"),
                                        ColorModel(name: "Blue"),
                                        ColorModel(name: "Black"),
                                        ColorModel(name: "Pink"),
                                        ColorModel(name: "Yellow")
    ]

    var body: some View {
        List {
            ForEach(colors) { color in
                NavigationLink(destination: Text(color.name)) {
                    Text(color.name)
                }
            }
            .navigationTitle("Colors")
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsView()
    }
}
