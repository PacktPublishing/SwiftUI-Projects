//
//  StandingsHeaderView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/20/20.
//

import SwiftUI


struct StandingsHeaderView: View {
    var body: some View {
        HStack {
            HStack {
                ZStack {
                    VStack(alignment: .leading)  {
                        Text("")
                            .custom(font: .medium, size: 14)
                            .foregroundColor(.white)
                    }
                }
                .frame(maxWidth: 10)
                .frame(height: 20)
                
                ZStack {
                    Text("")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .multilineTextAlignment(.leading)
                        .custom(font: .medium, size: 14)
                        .foregroundColor(.black)
                }
                .frame(minWidth: 80)
                .frame(height: 20)
            }

            HStack {
                ZStack {
                    Text("W-L")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .multilineTextAlignment(.center)
                        .custom(font: .bold, size: 12)
                        .foregroundColor(.black)
                }
                .frame(minWidth: 40)
                .frame(height: 20)
                
                ZStack {
                    Text("PCT")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .multilineTextAlignment(.center)
                        .custom(font: .bold, size: 12)
                        .foregroundColor(.black)
                }
                .frame(minWidth: 35)
                .frame(height: 20)
                
                ZStack {
                    Text("GB")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .multilineTextAlignment(.center)
                        .custom(font: .bold, size: 12)
                        .foregroundColor(.black)
                }
                .frame(minWidth: 20)
                .frame(height: 20)
            }

        }.padding(.bottom, 5)
    }
}

struct StandingsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        StandingsHeaderView()
    }
}
