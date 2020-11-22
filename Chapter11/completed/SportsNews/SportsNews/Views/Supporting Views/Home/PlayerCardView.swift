//
//  PlayerCardView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/19/20.
//

import SwiftUI

struct PlayerCardView: View {
    var player: Player
    
    var body: some View {
        ZStack {
            ZStack { // (1)
                HStack  { // (2)
                    Text(player.jersey)
                    .custom(font: .bold, size: 112)
                    .foregroundColor(Color.baseGrey)
                }
                .rotationEffect(.degrees(-90)).offset(x: -84, y: -70) // (3)

                VStack { // (1)
                    Spacer()
                    
                    HStack { // (2)
                        Spacer()
                        ForEach(player.quickStats) { item in
                            VStack(spacing: -5) {
                                Text(item.value).custom(font: .bold, size: 23)
                                Text(item.name).custom(font: .light, size: 14)
                            }.padding(.trailing, 8)
                        }


                        Spacer()
                    }
                    .frame(height: 60)
                    .background(Color.baseGrey)

                    VStack(spacing: -15) {
                        Text(player.firstName.uppercased()).custom(font: .light, size: 20)
                        Text(player.lastName.uppercased()).custom(font: .bold, size: 43)
                    }.frame(height: 72)

                }

            }
            .frame(width: 230, height: 240)
            .background(Color.white)
            .cornerRadius(10)


            Image(player.image)
                .resizable()
                .frame(width: 180, height: 132)
                .offset(x: 0, y: -77)
        }

    }
}

struct PlayerCardView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.baseGrey).edgesIgnoringSafeArea(.all)
            
            PlayerCardView(player: Player.default).previewLayout(.fixed(width: 400, height: 600))
        }
    }
}
