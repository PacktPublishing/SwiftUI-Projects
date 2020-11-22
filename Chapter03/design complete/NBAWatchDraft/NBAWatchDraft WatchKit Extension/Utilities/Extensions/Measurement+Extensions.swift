//
//  Measurement+Extensions.swift
//  NBAWatchDraft WatchKit Extension
//
//  Created by Craig Clayton on 11/22/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import Foundation

extension Measurement where UnitType : UnitLength {
    var displayHeight: String? {
        guard let measurement = self as? Measurement<UnitLength> else {
            return nil
        }
        let meters = measurement.converted(to: .meters).value
        return LengthFormatters.imperialLengthFormatter.string(fromMeters: meters)
    }
}
