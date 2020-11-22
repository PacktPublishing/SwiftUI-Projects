//
//  StandingsModuleView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/20/20.
//

import SwiftUI

struct StandingsModuleView: View {
    @EnvironmentObject var model: SportsNewsViewModel
    
    var body: some View {
        VStack(alignment: .leading ,spacing: 0) {
            HeaderView(title: model.dashboard.standingsMod.title, subtitle: model.dashboard.standingsMod.subtitle)
            Divider().padding(.bottom, 8)
            
            HStack {
                VStack {
                    StandingsHeaderView()
                    VStack(spacing: 2) {
                        ForEach(model.dashboard.standingsMod.standings) { item in
                            StandingItem(item: item)
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
            .environmentObject(SportsNewsViewModel())
    }
}
