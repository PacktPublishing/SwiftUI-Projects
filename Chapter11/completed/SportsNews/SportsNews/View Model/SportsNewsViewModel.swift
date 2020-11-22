//
//  SportsNewsViewModel.swift
//  SportsNews
//
//  Created by Craig Clayton on 11/3/20.
//

import SwiftUI
import Combine

class SportsNewsViewModel: ObservableObject {
    private let api = API()  // (1)
    private var subscriptions = Set<AnyCancellable>()  // (2)
    
    @Published var error: API.Error? = nil   // (3)
    @Published var regSeasonGames: [Game] = [] // (4)
    @Published var preSeasonGames: [Game] = []   // (5)
    @Published var players: [Player] = []   // (6)
    @Published var selectedVideo: Video = Video.default   // (7)
    @Published var dashboard: Dashboard = Dashboard(featuredArticleMod: FeaturedArticleMod.default, videoGalleryMod: VideoGalleryMod.default, playoffMod: PlayoffMod.default, featuredPlayerMod: FeaturedPlayerMod.default, standingsMod: StandingsMod.default)   // (8)
    
    func fetchDashboard() {
        api
            .fetchDashboard()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                    self.error = error
                }
            }, receiveValue: { dashboard in
                self.dashboard = dashboard
                self.error = nil
            }).store(in: &subscriptions)
    }
    
    func fetchPlayers() {
        api
            .fetchPlayers()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                    self.error = error
                }
            }, receiveValue: { players in
                self.players = []
                self.players = players
                
                self.error = nil
            }).store(in: &subscriptions)
    }
    
    func fetchGames() {
        api
            .fetchGames()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                    self.error = error
                }
            }, receiveValue: { games in
                self.regSeasonGames = []
                self.preSeasonGames = []
                self.preSeasonGames = games.filter({ $0.seasonType == "PRE" })
                self.regSeasonGames = games.filter({ $0.seasonType == "REG" })
                
                self.error = nil
            }).store(in: &subscriptions)
    }
}

