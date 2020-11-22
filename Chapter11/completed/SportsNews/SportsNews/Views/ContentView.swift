//
//  ContentView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/18/20.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: SportsNewsViewModel
    
    var body: some View {
        AppSidebarNavigation()
            .environmentObject(model)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(SportsNewsViewModel())
    }
}
