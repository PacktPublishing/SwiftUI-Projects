//
//  ScoreboardModuleView.swift
//  NBATeamApp
//
//  Created by Craig Clayton on 11/17/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct ScoreboardModuleView: View {
    var body: some View {
        HStack {
            ZStack {
                HStack {
                    Text("TOR")
                        .custom(font: .bold, size: 100)
                        .foregroundColor(.baseGrey)

                    Spacer()

                    Text("LAL")
                        .custom(font: .bold, size: 100)
                        .foregroundColor(.baseGrey)
                }

                HStack {
                    Image("raptors-lrg")
                        .resizable().frame(width: 75, height: 75).padding(.leading, 20)
                    Spacer()
                    Image("lakers-lrg")
                        .resizable().frame(width: 100, height: 100)
                }.padding(.horizontal, 12)

                HStack(alignment: .center, spacing: 24) {
                    HStack {
                        Text("999")
                            .multilineTextAlignment(.trailing)
                            .custom(font: .bold, size: 70)
                    }.padding(.trailing, 45)
                    
                    VStack(alignment: .trailing) {
                        HStack(spacing: 17) {
                            Text("1")
                                .custom(font: .medium, size: 16)
                            Text("2")
                                .custom(font: .medium, size: 16)
                            Text("3")
                                .custom(font: .medium, size: 16)
                            Text("4")
                                .custom(font: .medium, size: 16)
                        }

                        HStack(alignment: .center) {
                            Text("TORONTO").custom(font: .bold, size: 16)
                            Spacer()
                            Text("99")
                                .custom(font: .medium, size: 16)
                            Text("99")
                                .custom(font: .medium, size: 16)
                            Text("99")
                                .custom(font: .medium, size: 16)
                            Text("99")
                                .custom(font: .medium, size: 16)
                        }

                        HStack(alignment: .center) {
                            Text("LOS ANGELES").custom(font: .bold, size: 16)
                            Spacer()
                            Text("99")
                                .custom(font: .medium, size: 16)
                            Text("99")
                                .custom(font: .medium, size: 16)
                            Text("99")
                                .custom(font: .medium, size: 16)
                            Text("99")
                                .custom(font: .medium, size: 16)
                        }
                    }.frame(width: 210)

                    HStack {
                        Text("999")
                            .custom(font: .bold, size: 70)
                    }.padding(.leading, 45)
                }
            }
            .frame(height: 100)
            .background(Color.white)
            .cornerRadius(10)

        }
    }
}

struct ScoreboardModuleView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreboardModuleView().previewLayout(.fixed(width: 1200, height: 100))
    }
}
