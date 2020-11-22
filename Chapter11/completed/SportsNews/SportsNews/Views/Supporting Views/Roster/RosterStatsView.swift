//
//  RosterStatsView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/25/20.
//

import SwiftUI

struct RosterStatsView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0 ..< 6) { item in
                        TeamStatItem()
                    }
                }
            }
        }.offset(y: 68)

    }
}

struct RosterStatsView_Previews: PreviewProvider {
    static var previews: some View {
        RosterStatsView()
    }
}
