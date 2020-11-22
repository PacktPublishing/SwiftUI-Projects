//
//  GameItemView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/25/20.
//

import SwiftUI

struct GameItemView: View {
    var body: some View {
        ZStack {
            HStack {
                Text("TOR")
                    .custom(font: .bold, size: 47)
                    .foregroundColor(Color.baseGrey)

                Spacer()

                Text("LAL")
                    .custom(font: .bold, size: 47)
                    .foregroundColor(Color.baseGrey)
            }

            HStack {
                Image("raptors-logo")
                Spacer()
                Image("lakers-logo")
            }.padding(.horizontal, 12)

            HStack(spacing: 24) {
                Text("999")
                .custom(font: .medium, size: 29)
                VStack {
                    Text("GAME 1")
                        .custom(font: .bold, size: 14)
                    Text("FINAL")
                        .custom(font: .medium, size: 12)
                }
                Text("999")
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
        GameItemView()
            .previewLayout(.fixed(width: 290, height: 80))
    }
}
