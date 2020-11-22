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
    let manager = CoreDataManager.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
                .environment(\.managedObjectContext, manager.context)
        }
    }
}
