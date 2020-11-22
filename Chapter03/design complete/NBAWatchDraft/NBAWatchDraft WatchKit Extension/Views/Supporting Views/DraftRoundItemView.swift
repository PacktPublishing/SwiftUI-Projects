//
//  DraftRoundItem.swift
//  NBAWatchDraft WatchKit Extension
//
//  Created by Craig Clayton on 12/22/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct DraftRoundItemView: View {
    var body: some View {
        NavigationLink(destination: DraftList()) { // Step 1
            ZStack {
                Image("draft-menu-background").resizable()
                
                VStack(spacing: -15) { // Step 2
                    Text("ROUND")
                        .custom(font: .bold, size: 16) // Step 3
                    Text("1")
                        .custom(font: .ultralight, size: 70)
                }.offset(x: -10, y: 10)
            }
        }
        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        .listRowBackground(background)
    }
    
    var background: some View {
        Rectangle().fill(Color("CardBackground"))
    }
}

struct DraftRoundItemView_Previews: PreviewProvider {
    static var previews: some View {
        DraftRoundItemView()
    }
}


extension DraftRoundItemView_Previews {
    
}
