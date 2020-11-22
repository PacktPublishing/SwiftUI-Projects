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

extension View {
    func cornerRadius(_ radius: CGFloat, antialiased: Bool = true, corners: UIRectCorner) -> some View {
        clipShape(
            RoundedCorner(radius: radius, style: antialiased ? .continuous : .circular, corners: corners)
        )
    }
}
