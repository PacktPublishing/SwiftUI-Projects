//
//  TeamStatItem.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/25/20.
//

import SwiftUI

struct TeamStatItem: View {
    var body: some View {
        HStack(spacing: 0) {
            VStack {
                Text("Rank")
                    .custom(font: .bold, size: 16)
                    .frame(width: 35)
                    .rotationEffect(.degrees(-90))
            }
            .frame(width: 20, height: 75)
            .background(Color.baseYellow)

            HStack(alignment: .top ,spacing: 0) {
                Text("18")
                    .custom(font: .bold, size: 46)
                Text("TH")
                    .custom(font: .bold, size: 16).offset(y:10)
            }
            .frame(width: 70, height: 75)
            .background(Color.baseGrey)

            VStack(spacing: -8) {
                Text("109.0")
                    .custom(font: .bold, size: 27)
                Text("PTS PER GAME")
                    .custom(font: .light, size: 16)
            }
            .frame(width: 95, height: 75)
            .background(Color.white)

        }

    }
}

struct TeamStatItem_Previews: PreviewProvider {
    static var previews: some View {
        TeamStatItem()
    }
}
