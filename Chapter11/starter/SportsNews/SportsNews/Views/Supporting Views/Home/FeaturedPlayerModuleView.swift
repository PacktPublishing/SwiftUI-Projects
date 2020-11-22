//
//  FeaturedPlayerModuleView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/19/20.
//

import SwiftUI

struct FeaturedPlayerModuleView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            HeaderView(title: "Featured", subtitle: "Player")
            Divider().padding(.bottom, 30)
            PlayerCardView()
            
        }.frame(width: 230)
    }
}

struct FeaturedPlayerModuleView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedPlayerModuleView()
    }
}
