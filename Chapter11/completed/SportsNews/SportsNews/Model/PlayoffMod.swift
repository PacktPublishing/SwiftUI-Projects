//
//  PlayoffMod.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/28/20.
//

import Foundation

struct PlayoffMod: Decodable, Identifiable {
    let id: String
    let title: String
    let subtitle: String
    let games: [Game]
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case subtitle = "sub_title"
        case games
    }
    
    static let `default` = Self(id: "123", title: "NBA", subtitle: "PLAYOFFS", games: [Game.default])
}
