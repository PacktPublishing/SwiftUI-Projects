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
    static let baseWhite = Color("isabelline")
    static let baseGrey = Color("smoke")
    static let baseYellow = Color("saffron")
}

extension UIColor {
    static let baseWhite = Color(named: "isabelline")
    static let baseGrey = Color(named: "smoke")
    static let baseYellow = Color(named: "saffron")


    private static func Color(named key: String) -> UIColor {
       if let color = UIColor(named: key, in: .main, compatibleWith: nil) {
           return color
       }

       return .black
    }
}

