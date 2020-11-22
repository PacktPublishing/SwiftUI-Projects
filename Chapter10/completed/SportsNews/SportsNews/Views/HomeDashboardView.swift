//
//  HomeDashboardView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/18/20.
//

import SwiftUI

struct HomeDashboardView: View {
    var body: some View {
        ZStack { // (1)
            Color(.baseGrey) // (2)
                .edgesIgnoringSafeArea(.all)

            ScrollView {
                VStack(alignment: .leading) {
                    VideoModuleView()
                    middleRow
                    bottomRow
                }.padding()
            }
        }
        .navigationTitle(Text("HOME")) // (3)
        .navigationBarTitleDisplayMode(.inline) // (4)
        .background(CustomNavigationBar {navigationController in // (5)
            navigationController.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: CustomFont.bold.rawValue, size: 24)!]
        })
    }
    


    var middleRow: some View {
        HStack(alignment: .top, spacing: 20) {
            FeaturedArticleModuleView()
            FeaturedPlayerModuleView()
            StandingsModuleView()
        }
    }

    var bottomRow: some View {
        ScrollView(.horizontal) {
            HStack {
                PlayoffGridModuleView()
            }
        }
    }
}

struct HomeDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        HomeDashboardView().previewLayout(.fixed(width: 1187, height: 1034))
    }
}
