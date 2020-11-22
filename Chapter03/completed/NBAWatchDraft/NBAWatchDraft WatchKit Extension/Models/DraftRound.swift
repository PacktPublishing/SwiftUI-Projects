//
//  DraftRound.swift
//  NBAWatchDraft WatchKit Extension
//
//  Created by Craig Clayton on 11/21/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import Foundation

struct DraftRound: Decodable, Identifiable  {
    let id = UUID()
    let headline: String
    let subheadline: String
    let round: String
    let picks: [Pick]
}
