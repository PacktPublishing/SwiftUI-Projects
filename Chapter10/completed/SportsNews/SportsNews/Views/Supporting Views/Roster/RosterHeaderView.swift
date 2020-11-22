//
//  RosterHeaderView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/25/20.
//

import SwiftUI

struct RosterHeaderView: View {
    var body: some View {
        ZStack {
            ZStack { // (1)
                HStack { // (2)
                    Spacer()
                    ZStack(alignment: .topTrailing) { // (3)
                        Text("STARTING")
                            .custom(font: .bold, size: 65)
                            .foregroundColor(Color(.baseWhite))
                            .offset(x: -80, y: 20)
                        Text("5")
                            .custom(font: .bold, size: 200)
                            .foregroundColor(Color(.baseWhite))
                            .offset(x: 15, y: -30)
                    }
                }
            }
            .frame(height: 210)
            .background(Color.white)
            .cornerRadius(10)

            // Add next step here
            ZStack { // (1)
                Image("lebron-james-full")
                    .zIndex(4) // (2)
                Image("anthony-davis-full")
                    .zIndex(3)
                    .offset(x: 130, y: -3)
                Image("javale-mcgee-full")
                    .zIndex(1)
                    .offset(x: -130, y: -4)
                Image("danny-green-full")
                    .zIndex(0)
                    .offset(x: -250, y: -4)
                Image("avery-bradley-full")
                    .zIndex(0)
                    .offset(x: 250, y: 1)
            }.offset(y: -62)

            RosterStatsView()
        }
        .padding(24)
        .padding(.top, 50)
    }
}

struct RosterHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        RosterHeaderView()
    }
}
