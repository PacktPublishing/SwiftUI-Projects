//
//  ContentView.swift
//  NBAWatchDraft WatchKit Extension
//
//  Created by Craig Clayton on 11/5/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(0..<2) { _ in 
                DraftRoundItemView()
            }
        }
        .listStyle(CarouselListStyle())
        .navigationBarTitle(Text("NBA Draft"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
