//
//  FeaturedArticleMod.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/28/20.
//

import Foundation

struct FeaturedArticleMod: Decodable {
    let id: String
    let title: String
    let subtitle: String
    let article: FeaturedArticle
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case subtitle = "sub_title"
        case article = "featured_article"
    }
    
    static let `default` = Self(id: "123", title: "Featured", subtitle: "Article", article: FeaturedArticle.default)
}

