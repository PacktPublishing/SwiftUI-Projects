//
//  FinancialApp.swift
//  FinancialApp
//
//  Created by Craig Clayton on 10/18/20.
//

import SwiftUI

@main
struct FinancialApp: App {
    
    @StateObject private var model = CreateAccountViewModel()

    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
