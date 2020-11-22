//
//  VideoGalleryMod.swift
//  SportsNews
//
//  Created by Craig Clayton on 11/3/20.
//

import Foundation

struct VideoGalleryMod: Decodable, Identifiable {
    let id: String
    let title: String
    let subtitle: String
    let videos: [Video]
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case subtitle = "sub_title"
        case videos
    }
    
    static let `default` = Self(id: UUID().uuidString, title: "LATEST", subtitle: "VIDEOS", videos: [Video.default])
}
