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
            ForEach(colors) { color in // Step 1
                NavigationLink(destination: Text(color.name)) { // Step 2
                    Text(color.name) // Step 3
                }
            }
        }

    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsView()
    }
}
