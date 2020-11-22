//
//  DraftList.swift
//  NBAWatchDraft WatchKit Extension
//
//  Created by Craig Clayton on 12/19/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//
import SwiftUI

struct DraftList: View {

    var body: some View {
        VStack(spacing: 10) {
            VStack(spacing: 0) {
                Text("ROUND 1")
                    .custom(font: .bold, size: 20)
                Divider()
                DraftRoundCardView()
            }
        }
        .navigationBarTitle(Text("By Round"))
    }
}

struct DraftList_Previews: PreviewProvider {
    static var previews: some View {
        DraftList()
    }
}


extension DraftList_Previews {
    
}
