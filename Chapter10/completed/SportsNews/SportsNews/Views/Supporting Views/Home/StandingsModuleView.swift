//
//  StandingsModuleView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/20/20.
//

import SwiftUI

struct StandingsModuleView: View {
    var body: some View {
        VStack(alignment: .leading ,spacing: 0) {
            HeaderView(title: "Western", subtitle: "Conference")
            Divider().padding(.bottom, 8)
            
            HStack {
                VStack {
                    StandingsHeaderView()
                    VStack(spacing: 2) {
                        ForEach(0..<10) { item in
                            StandingItem()
                        }
                    }
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)

        }
    }
}

struct StandingsModuleView_Previews: PreviewProvider {
    static var previews: some View {
        StandingsModuleView()
    }
}
