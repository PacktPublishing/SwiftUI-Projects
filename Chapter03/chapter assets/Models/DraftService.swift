//
//  DraftService.swift
//  NBAWatchDraft WatchKit Extension
//
//  Created by Craig Clayton on 11/22/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import Foundation

protocol DraftService {
    func fetchPicks() -> [Pick]
    func fetchPicks(by team: String) -> [Pick]
}

protocol DraftPreviewService {
    func currentPick() -> Pick
    func currentProspect() -> Prospect
}
