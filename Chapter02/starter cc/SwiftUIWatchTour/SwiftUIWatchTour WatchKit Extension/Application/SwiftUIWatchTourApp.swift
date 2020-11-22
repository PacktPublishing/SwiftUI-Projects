//
//  SwiftUIWatchTourApp.swift
//  SwiftUIWatchTour WatchKit Extension
//
//  Created by Craig Clayton on 10/5/20.
//

import SwiftUI

@main
struct SwiftUIWatchTourApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
