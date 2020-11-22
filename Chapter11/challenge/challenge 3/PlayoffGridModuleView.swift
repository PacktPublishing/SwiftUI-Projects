//
//  PlayoffGridModuleView.swift
//  SportsNewApp
//
//  Created by Craig Clayton on 7/18/20.
//

import SwiftUI

struct PlayoffGridModuleView: View {
    
    @EnvironmentObject var model: SportsNewsViewModel
    
    var body: some View {
        LazyHGrid(rows: [GridItem(.adaptive(minimum: 80))], spacing: 6, pinnedViews: [.sectionHeaders]) {
            Section(header: PlayoffModuleHeaderView()) {
                ForEach(model.dashboard.playoffMod.games) { game in
                    GameItemView(game: game)
                        .frame(minWidth: 282)
                }
            }
        }
    }
}

struct PlayoffGridModuleView_Previews: PreviewProvider {
    static var previews: some View {
        PlayoffGridModuleView()
    }
}
