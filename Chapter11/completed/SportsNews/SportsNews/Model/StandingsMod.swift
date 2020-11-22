//
//  StandingsMod.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/28/20.
//

import Foundation

struct StandingsMod: Decodable, Identifiable {
    let id: String
    let title: String
    let subtitle: String
    let standings: [Team]
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case subtitle = "sub_title"
        case standings
    }
    
    static let `default` = Self(id: "1234", title: "WESTERN", subtitle: "CONFERENCE", standings: [Team.default])
}
