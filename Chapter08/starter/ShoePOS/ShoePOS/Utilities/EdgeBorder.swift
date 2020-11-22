//
//  EdgeBorder.swift
//  ShoePOS
//
//  Created by Craig Clayton on 8/9/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct EdgeBorder: Shape {

    var width: CGFloat
    var edge: Edge

    func path(in rect: CGRect) -> Path {
        var x: CGFloat {
            switch edge {
            case .top, .bottom, .leading: return rect.minX
            case .trailing: return rect.maxX - width
            }
        }

        var y: CGFloat {
            switch edge {
            case .top, .leading, .trailing: return rect.minY
            case .bottom: return rect.maxY - width
            }
        }

        var w: CGFloat {
            switch edge {
            case .top, .bottom: return rect.width
            case .leading, .trailing: return self.width
            }
        }

        var h: CGFloat {
            switch edge {
            case .top, .bottom: return self.width
            case .leading, .trailing: return rect.height
            }
        }

        return Path( CGRect(x: x, y: y, width: w, height: h) )
    }
}

