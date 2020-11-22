//
//  Palette+Color.swift
//  Financial App
//
//  Created by Craig Clayton on 11/20/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI
import Foundation

extension Color {
    static let baseWhite = Color("smoke") //F2F4F5
    static let baseLightGrey = Color("light_grey") // D3DBE2
    static let baseMediumGrey = Color("medium_grey") // 96A7B7 SecondaryAccentColor
    static let baseDarkGrey = Color("paynes_grey") // TextColor
    static let baseLightBlue = Color("light_blue") // AccentColor
}

extension UIColor {
    static let baseWhite = Color(named: "smoke") //F2F4F5
    static let baseLightGrey = Color(named: "light_grey") // D3DBE2
    static let baseMediumGrey = Color(named: "medium_grey") // 96A7B7 SecondaryAccentColor
    static let baseDarkGrey = Color(named: "paynes_grey") // TextColor
    static let baseLightBlue = Color(named: "light_blue") // AccentColor

    private static func Color(named key: String) -> UIColor {
       if let color = UIColor(named: key, in: .main, compatibleWith: nil) {
           return color
       }

       return .black
    }
}

