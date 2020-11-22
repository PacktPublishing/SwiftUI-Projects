//
//  DraftRoundCardView.swift
//  NBAWatchDraft WatchKit Extension
//
//  Created by Craig Clayton on 12/22/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct DraftRoundCardView: View {
    @State private var currentIndex = 0.0
    @State private var isShowingDetail = false
    private let numberOfVisibleCards = 3
    private let testPicks = 10
    
    var body: some View {
        ZStack {
            ForEach((0...testPicks).reversed(), id: \.self) { index in
                DraftCardView()
                    .cardTransformed(self.currentIndex, card: index)
                    .onTapGesture {
                        self.isShowingDetail.toggle()
                    }
                    .sheet(isPresented: self.$isShowingDetail) {
                        DraftPlayerDetailView()
                    }
            }
        }
        .focusable(true)
        .digitalCrownRotation(
            $currentIndex.animation(),
            from: 0.0,
            through: Double(testPicks - 1),
            by: 1.0,
            sensitivity: .low
        )
    }
}

struct DraftRoundCardView_Previews: PreviewProvider {
    static var previews: some View {
        DraftRoundCardView()
    }
}

extension DraftRoundCardView_Previews {
    
}


