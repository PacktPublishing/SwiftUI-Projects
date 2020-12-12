//
//  DraftPlayerDetailView.swift
//  NBAWatchDraft WatchKit Extension
//
//  Created by Craig Clayton on 12/21/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct DraftPlayerDetailView: View {
    var prospect: Prospect
    
    var body: some View {
        ScrollView {
            VStack(alignment:.leading, spacing: 0) {
                DraftPlayerDetailHeaderView(prospect: prospect)
                DraftPlayerDetailStatsView(prospect: prospect)
                DraftPlayerDetailInfoView(prospect: prospect)
            }
        }
    }
}

struct DraftPlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DraftPlayerDetailView(prospect: Prospect(firstName: "Craig", lastName: "Clayton", position: "PG", ht: 85, wt: 235, image: "", experience: "", birthPlace: "", analysis: "", round: 1, draftPosition: 1, school: "", team: Team(name: "Lakers", market: "Los Angeles"), stats: []))
    }
}





//
//VStack(spacing: -1) {
//    // 2
//    HStack {
//        // 3
//        Image("pelicans").offset(x: 29)
//        Image("zion-williamson").offset(x:0, y: -25)
//    }
//    .frame(height: 58)
//    .frame(minWidth: 0, maxWidth: .infinity)
//    .background(Color("pelicans"))
//
//    // 4
//    VStack(spacing: -5) {
//        // 5
//        Text("ZION")
//            .custom(font: .ultralight, size: 13)
//        Text("WILLIAMSON")
//            .custom(font: .bold, size: 20)
//    }
//    .frame(minWidth: 0, maxWidth: .infinity)
//    .background(Color.white)
//    .foregroundColor(.black)
//}
