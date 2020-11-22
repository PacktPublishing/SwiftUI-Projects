//
//  PlayoffGridModuleView.swift
//  SportsNewApp
//
//  Created by Craig Clayton on 7/18/20.
//

import SwiftUI

struct PlayoffGridModuleView: View {
    var body: some View {
        LazyHGrid(rows: [GridItem(.adaptive(minimum: 80))], spacing: 6, pinnedViews: [.sectionHeaders]) {
            Section(header: PlayoffModuleHeaderView()) {
                ForEach(0..<7) { _ in
                    GameItemView()
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
