//
//  SportsNewsApp.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/18/20.
//

import SwiftUI

@main
struct SportsNewsApp: App {
    @StateObject var viewModel = SportsNewsViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
