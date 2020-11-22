//
//  FeaturedPlayerModuleView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/19/20.
//

import SwiftUI

struct FeaturedPlayerModuleView: View {
    @EnvironmentObject var model: SportsNewsViewModel
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            HeaderView(title: model.dashboard.featuredPlayerMod.title, subtitle: model.dashboard.featuredPlayerMod.subtitle)
            Divider().padding(.bottom, 30)
            PlayerCardView(player: model.dashboard.featuredPlayerMod.featuredPlayer)
            
        }.frame(width: 230)
    }
}

struct FeaturedPlayerModuleView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedPlayerModuleView()
    }
}
