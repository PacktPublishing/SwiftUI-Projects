//
//  RosterView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/18/20.
//

import SwiftUI

struct RosterView: View {
    var body: some View {
        ZStack {
            Color(.baseGrey)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    header
                    title
                    grid
                }
            }
        }
        .navigationTitle(Text("ROSTER"))
        .navigationBarTitleDisplayMode(.inline)

    }
    
    var header: some View {
        RosterHeaderView()
    }

    var title: some View {
        VStack(spacing: 0) {
            HeaderView(title: "Lakers", subtitle: "Roster", showViewAll: false)
                .padding(.horizontal, 10)
            Divider()
                .padding(.horizontal, 10)
        }
    }
    
    var grid: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 250), spacing: 4)], spacing: 34) {
            ForEach(0..<15) { _ in
                PlayerCardView()
            }
        }
        .padding(.horizontal, 5)
        .padding(.vertical, 30)
    }

}

struct RosterView_Previews: PreviewProvider {
    static var previews: some View {
        RosterView().previewLayout(.fixed(width: 1187, height: 1034))
    }
}
