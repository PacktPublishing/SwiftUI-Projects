//
//  Player.swift
//  NBASearchSwift
//
//  Created by Craig Clayton on 2/4/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import Foundation


struct Player: Decodable, Identifiable {
    
    let id: String
    let firstName: String
    let lastName: String
    let jersey: String
    let image: String
    let quickStats: [Stats]

    enum CodingKeys: String, CodingKey {
        case id
        case jersey
        case firstName = "first_name"
        case lastName = "last_name"
        case image
        case quickStats = "quick_stats"
    }
    
    static let `default` = Self(id: "1234", firstName: "Lebron", lastName: "James", jersey: "23", image: "james", quickStats: [Stats.default, Stats.default, Stats.default, Stats.default])
}


