//
//  LocationItem.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/19/20.
//

import Foundation
import Combine

struct Team: Decodable, Identifiable {
    var id: String
    var shortName: String
    var wins: String
    var losses: String
    var homeRecord: String
    var roadRecord: String
    var winPct: String
    var gamesBehind: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case shortName = "short_name"
        case wins
        case losses
        case homeRecord = "home_record"
        case roadRecord = "road_record"
        case winPct = "win_percentage"
        case gamesBehind = "games_back"
    }
    
    static let `default` = Self(id: "1234", shortName: "Lakers", wins: "99", losses: "99", homeRecord: "99-99", roadRecord: "99-99", winPct: ".999", gamesBehind: "99")
    
    func record() -> String {
        return "\(wins)-\(losses)"
    }
}

