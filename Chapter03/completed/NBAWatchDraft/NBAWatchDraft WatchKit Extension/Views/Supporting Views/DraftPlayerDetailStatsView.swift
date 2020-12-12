//
//  DraftPlayerDetailStatsView.swift
//  NBAWatchDraft WatchKit Extension
//
//  Created by Craig Clayton on 12/22/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct DraftPlayerDetailStatsView: View {
    var prospect: Prospect

    var body: some View {
        HStack {
            ForEach(prospect.stats) { stat in
                HStack {
                    Spacer(minLength: 4)
                    VStack {
                        Text(stat.name.uppercased())
                            .custom(font: .bold, size: 12)
                            .offset(y: 1)
                        Text(stat.value)
                            .custom(font: .ultralight, size: 18)
                    }
                    .background(Image("stat-bg-small"))
                    Spacer(minLength: 4)
                }
            }
        }
        .padding(.top, 10)
        .padding(.horizontal, 5)
    }
}

struct DraftPlayerDetailStatsView_Previews: PreviewProvider {
    static var previews: some View {
        DraftPlayerDetailStatsView(prospect: Prospect(firstName: "Craig", lastName: "Clayton", position: "PG", ht: 85, wt: 235, image: "", experience: "", birthPlace: "", analysis: "", round: 1, draftPosition: 1, school: "", team: Team(name: "Lakers", market: "Los Angeles"), stats: []))
    }
}
