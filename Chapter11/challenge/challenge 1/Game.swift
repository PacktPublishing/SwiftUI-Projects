//
//  Game.swift
//  NBAPlayersSearch
//
//  Created by Craig Clayton on 7/25/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import Foundation

struct Game: Decodable, Identifiable {
    var id: String
    var state: String
    var city: String
    var homeScore: String
    var visitorScore: String
    var clock: String
    var status: String
    var homeTeam: GameTeam
    var visitorTeam: GameTeam
    var title: String
    var date: String
    var winningTeam: String
    var phase: String
    var seasonType: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case state
        case city
        case homeScore = "home_score"
        case visitorScore = "visitor_score"
        case clock
        case status
        case homeTeam = "home_team"
        case visitorTeam = "visitor_team"
        case title
        case date
        case winningTeam = "winning_team"
        case phase
        case seasonType = "season_type"
    }
    
    
    static let `default` = Self(id: "1234", state: "California", city: "Los Angeles", homeScore: "99", visitorScore: "99", clock: "00:00.0", status: "PAST", homeTeam: GameTeam.default, visitorTeam: GameTeam.default, title: "Suns @ Lakers", date: "10/10/2019", winningTeam: "LAL", phase: "Final", seasonType: "PRE")
}
