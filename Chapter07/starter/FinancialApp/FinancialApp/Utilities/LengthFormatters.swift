//
//  LengthFormatter.swift
//  NBAWatchDraft WatchKit Extension
//
//  Created by Craig Clayton on 11/22/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import Foundation

public struct LengthFormatters {
    public static let imperialLengthFormatter: LengthFormatter = {
        let formatter = LengthFormatter()
        formatter.isForPersonHeightUse = true
        formatter.unitStyle = .short

        return formatter
    }()
}
