//
//  Dashboard.swift
//  SportsNews
//
//  Created by Craig Clayton on 11/3/20.
//

import Foundation

struct Dashboard: Decodable  {
    let featuredArticleMod: FeaturedArticleMod
    let videoGalleryMod: VideoGalleryMod
    let playoffMod: PlayoffMod
    let featuredPlayerMod: FeaturedPlayerMod
    let standingsMod: StandingsMod
    
    static let `default` = Self(featuredArticleMod: FeaturedArticleMod.default, videoGalleryMod: VideoGalleryMod.default, playoffMod: PlayoffMod.default, featuredPlayerMod: FeaturedPlayerMod.default, standingsMod: StandingsMod.default)
    
    enum CodingKeys: String, CodingKey {
        case featuredArticleMod = "article_mod"
        case videoGalleryMod = "videogallery_mod"
        case playoffMod = "playoff_mod"
        case featuredPlayerMod = "featured_player_mod"
        case standingsMod = "standings_mod"
    }
}
