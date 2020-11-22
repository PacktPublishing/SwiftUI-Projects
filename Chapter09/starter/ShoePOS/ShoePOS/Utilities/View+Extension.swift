//
//  RoundedCorner+Extension.swift
//  
//
//  Created by Craig Clayton on 11/17/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var style: RoundedCornerStyle = .continuous
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, antialiased: Bool = true, corners: UIRectCorner) -> some View {
        clipShape(
            RoundedCorner(radius: radius, style: antialiased ? .continuous : .circular, corners: corners)
        )
    }
}
