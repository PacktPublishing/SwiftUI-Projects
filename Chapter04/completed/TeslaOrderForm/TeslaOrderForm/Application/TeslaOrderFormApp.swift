//
//  TeslaOrderFormApp.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 10/9/20.
//

import SwiftUI

@main
struct TeslaOrderFormApp: App {
    @StateObject private var order = OrderViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(order)
        }
    }
}
