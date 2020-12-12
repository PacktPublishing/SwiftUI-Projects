//
//  DraftPlayerDetailHeader.swift
//  NBAWatchDraft WatchKit Extension
//
//  Created by Craig Clayton on 12/22/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct DraftPlayerDetailHeaderView: View {
    var prospect: Prospect
    
    var body: some View {
        VStack(spacing: -35) { // Step 2
            HStack(alignment:.top, spacing: 0) { // Step 3
                Text("\(prospect.round)")
                    .custom(font: .ultralight, size: 19)
                    .offset(x: -2, y: 15)
                Text(String(format: "%02d", prospect.draftPosition))
                    .custom(font: .bold, size: 70)
            }
            .padding(.leading, 12)
            .offset(x: -45, y: -17)

            VStack(spacing: -1) { // Step 1
                HStack { // Step 2
                    Image(prospect.team.name.lowercased()).offset(x: 29) // Step 3
                    Image(prospect.image.lowercased()).offset(x:0, y: -25)
                }
                .frame(height: 58)
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(Color(prospect.team.name.lowercased()))

                VStack(spacing: -5) { // Step 4
                    Text(prospect.firstName.uppercased()) // Step 5
                        .custom(font: .ultralight, size: 13)
                    Text(prospect.lastName.uppercased())
                        .custom(font: .bold, size: 20)
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(Color.white)
                .foregroundColor(.black)
            }
        }
    }
}

struct DraftPlayerDetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DraftPlayerDetailHeaderView(prospect: Prospect(firstName: "Craig", lastName: "Clayton", position: "PG", ht: 85, wt: 235, image: "", experience: "", birthPlace: "", analysis: "", round: 1, draftPosition: 1, school: "", team: Team(name: "Lakers", market: "Los Angeles"), stats: []))
    }
}
