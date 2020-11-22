//
//  Video.swift
//  SportsNews
//
//  Created by Craig Clayton on 10/22/20.
//

import Foundation

struct Video: Decodable, Identifiable {
    var id: String
    var title: String
    var image: String
    var url: String
    var date: String
    
    static let `default` = Self(id: "1234", title: "Video title", image: "video1-thumb", url: "", date: "10/10/2020")
}

