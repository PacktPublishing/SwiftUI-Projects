//
//  GameTeam.swift
//  SportsNews
//
//  Created by Craig Clayton on 8/1/20.
//

import Foundation

struct GameTeam: Decodable, Identifiable {
    var id: String
    var city: String
    var abbreviation: String
    var name: String
    var shortName: String
    var image: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case city
        case abbreviation
        case name
        case shortName = "short_name"
        case image
    }
    
    static let `default` = Self(id: "1234", city: "Los Angeles", abbreviation: "LAL", name: "Los Angeles Lakers", shortName: "Lakers", image: "lal")
}
