//
//  GameItemView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/25/20.
//

import SwiftUI

struct GameItemView: View {
    let game: Game
    
    var body: some View {
        ZStack {
            HStack {
                Text(game.visitorTeam.abbreviation)
                    .custom(font: .bold, size: 47)
                    .foregroundColor(Color.baseGrey)

                Spacer()

                Text(game.homeTeam.abbreviation)
                    .custom(font: .bold, size: 47)
                    .foregroundColor(Color.baseGrey)
            }

            HStack {
                Image(game.visitorTeam.image)
                Spacer()
                Image(game.homeTeam.image)
            }.padding(.horizontal, 12)

            HStack(spacing: 24) {
                Text(game.visitorScore)
                    .custom(font: .medium, size: 29)
                
                VStack {
                    Text(game.phase)
                        .custom(font: .bold, size: 14)
                    Text(game.date)
                        .custom(font: .medium, size: 12)
                }
                
                Text(game.homeScore)
                .custom(font: .medium, size: 29)
            }


        }
        .frame(height: 74)
        .background(Color.white)
        .cornerRadius(10)

    }
}

struct GameItemView_Previews: PreviewProvider {
    static var previews: some View {
        GameItemView(game: Game.default)
            .previewLayout(.fixed(width: 290, height: 80))
    }
}
