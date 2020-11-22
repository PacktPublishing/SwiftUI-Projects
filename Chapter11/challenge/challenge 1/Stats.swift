//
//  Stats.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/28/20.
//

import Foundation

struct Stats: Decodable, Identifiable {
    var id: String
    var key: String
    var name: String
    var value: String
    var orderBy: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case key
        case name
        case value
        case orderBy = "order_by"
    }
    
    static let `default` = Self(id: "1234", key: "key", name: "PPG", value: "99.9", orderBy: 0)
}
