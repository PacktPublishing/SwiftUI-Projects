//
//  PlayerCardView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/19/20.
//

import SwiftUI

struct PlayerCardView: View {
    var body: some View {
        ZStack {
            ZStack { // (1)
                HStack  { // (2)
                    Text("23")
                    .custom(font: .bold, size: 112)
                    .foregroundColor(Color.baseGrey)
                }
                .rotationEffect(.degrees(-90)).offset(x: -84, y: -70) // (3)

                VStack { // (1)
                    Spacer()
                    
                    HStack { // (2)
                        Spacer()
                        ForEach(0 ..< 4) { item in // (3)
                            VStack(spacing: -5) {
                                Text("99.9").custom(font: .bold, size: 23)
                                Text("PPG").custom(font: .light, size: 14)
                            }.padding(.trailing, 8)
                        }

                        Spacer()
                    }
                    .frame(height: 60)
                    .background(Color.baseGrey)

                    VStack(spacing: -15) {
                        Text("LEBRON").custom(font: .light, size: 20)
                        Text("JAMES").custom(font: .bold, size: 43)
                    }.frame(height: 72)

                }

            }
            .frame(width: 230, height: 240)
            .background(Color.white)
            .cornerRadius(10)


            Image("lebron-james-full")
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
            
            PlayerCardView()
        }
    }
}
