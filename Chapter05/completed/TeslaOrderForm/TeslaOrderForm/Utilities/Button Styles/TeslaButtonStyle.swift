//
//  TeslaButtonStyle.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 2/13/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct TeslaButtonStyle: ButtonStyle {

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(height: 64)
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.horizontal, 20)
            .custom(font: .bold, size: 21)
            .buttonStyle(PlainButtonStyle())
    }
}
