//
//  DraftList.swift
//  NBAWatchDraft WatchKit Extension
//
//  Created by Craig Clayton on 12/19/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//
import SwiftUI

struct DraftList: View {
    let data: DraftRound
    
    var body: some View {
        VStack(spacing: 10) {
            VStack(spacing: 0) {
                Text(data.round.uppercased())
                    .custom(font: .bold, size: 20)
                Divider()
                DraftRoundCardView(picks: data.picks)
            }
        }
        .navigationBarTitle(Text("By Round"))
    }
}

struct DraftList_Previews: PreviewProvider {
    static var previews: some View {
        DraftList(data: sampleRound)
    }
}


extension DraftList_Previews {
    static var sampleRound: DraftRound  {
        return MockDraftPreviewService.draftRound
    }
}
