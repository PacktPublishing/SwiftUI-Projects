//
//  ScheduleView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/18/20.
//

import SwiftUI

struct ScheduleView: View {
    @EnvironmentObject var model: SportsNewsViewModel
    
    var body: some View {
        ZStack {
            Color(.baseGrey)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                LazyVStack {
                    Section(header: HeaderView(title: "PRE", subtitle: "SEASON", showViewAll: false)) {
                        ForEach(model.preSeasonGames) { game in
                            GameItemView(game: game)
                                .cornerRadius(10)
                                .frame(height: 74)
                                .id(UUID())
                        }
                    }
                    
                    Section(header: HeaderView(title: "REGULAR", subtitle: "SEASON", showViewAll: false)) {
                        ForEach(model.regSeasonGames) { game in
                            GameItemView(game: game)
                                .cornerRadius(10)
                                .frame(height: 74)
                                .id(UUID())
                        }
                    }
                }.padding(.horizontal, 10)
            }
            .navigationTitle(Text("SCHEDULE"))
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                model.fetchGames()
            }
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
            .previewLayout(.fixed(width: 1187, height: 1034))
            .environmentObject(SportsNewsViewModel())
    }
}
