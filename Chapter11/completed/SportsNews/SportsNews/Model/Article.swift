//
//  Article.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/28/20.
//

import Foundation

struct FeaturedArticle: Decodable {
    var title: String
    var image: String
    var author: String
    var summary: String
    
    static let `default` = Self(title: "Featured Article 1", image: "featured-article1", author: "Craig Clayton", summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam risus dui, venenatis ac turpis sit amet, eleifend tincidunt nibh. Suspendisse sed aliquam quam, id viverra turpis. Nullam rhoncus ultrices ligula ac eleifend")
}
