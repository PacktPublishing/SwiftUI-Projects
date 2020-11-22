//
//  FeaturedPlayerMod.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/28/20.
//

import Foundation

struct FeaturedPlayerMod: Decodable, Identifiable {
    let id: String
    let title: String
    let subtitle: String
    let featuredPlayer: Player
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case subtitle = "sub_title"
        case featuredPlayer = "featured_player"
    }
    
    static let `default` = Self(id: "123", title: "FEATURED", subtitle: "PLAYER", featuredPlayer: Player.default)
}
