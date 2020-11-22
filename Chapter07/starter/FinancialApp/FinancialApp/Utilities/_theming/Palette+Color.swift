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
    static let basePrussianBlue = Color("PrussianBlue")
    static let baseRockBlue = Color("RockBlue")
    static let baseEndeavourBlue = Color("EndeavourBlue")
    static let baseDustyGray = Color("DustyGray")
    static let baseGreen = Color("JungleGreen")
    static let baseHokiBlue = Color("HokiBlue")
    static let baseWhite = Color("AquaHaze")
    static let baseLightWhite = Color("White")
    static let baseMediumGray = Color("MediumGray")
}

extension UIColor {
    static let baseDustyGray = Color(named: "DustyGray")
    static let basePrussianBlue = Color(named: "PrussianBlue")
    static let baseRockBlue = Color(named: "RockBlue")
    static let baseEndeavourBlue = Color(named: "EndeavourBlue")
    static let baseGreen = Color(named: "JungleGreen")
    static let baseHokiBlue = Color(named: "HokiBlue")
    static let baseWhite = Color(named: "AquaHaze")
    static let baseLightWhite = Color(named: "White")
    static let baseMediumGray = Color(named: "MediumGray")

    private static func Color(named key: String) -> UIColor {
       if let color = UIColor(named: key, in: .main, compatibleWith: nil) {
           return color
       }

       return .black
    }
    
    convenience init(hexString: String) {
        let hexString = hexString.trimmingCharacters(in: .whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)

        if hexString.hasPrefix("#") {
            //scanner.scanLocation = scanner.scanLocation + 1
            //scanner.string.index(after: scanner.currentIndex)
            scanner.scanLocation = 1
        }

        var color: UInt64 = 0
        scanner.scanHexInt64(&color)

        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask

        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0

        self.init(red: red, green: green, blue: blue, alpha: 1)
    }

    var hexString: String {

        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0

        getRed(&r, green: &g, blue: &b, alpha: &a)

        let rgb: Int = (Int)(r * 255) << 16 | (Int)(g * 255) << 8 | (Int)(b * 255) << 0

        return String(format: "#%06x", rgb)
    }
}

