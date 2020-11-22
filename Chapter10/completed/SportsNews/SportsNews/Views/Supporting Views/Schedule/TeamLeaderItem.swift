//
//  TeamLeaderItem.swift
//  NBATeamApp
//
//  Created by Craig Clayton on 11/17/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct TeamLeaderItem: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .frame(height: 70)
            
            HStack(alignment: .bottom) {
                VStack(alignment: .leading, spacing: -3) {
                    Text("99.9%")
                        .custom(font: .bold, size: 30)
                    VStack(alignment: .leading, spacing: -5) {
                        Text("POINTS")
                            .custom(font: .bold, size: 14)
                        Text("PER GAME")
                            .custom(font: .light, size: 14)
                    }
                }
                .padding(.leading, 10)
                
                
                Spacer()
                
                Image("javale-mcgee-full")
                    .resizable()
                    .frame(width: 113, height: 96)
                    .mask(RoundedRectangle(cornerRadius: 12)
                            .background(Color.clear)
                            .offset(x: -25)
                ).offset(x: 20)
            }
            
        }
    }
}

struct TeamLeaderItem_Previews: PreviewProvider {
    static var previews: some View {
        TeamLeaderItem().previewLayout(.fixed(width: 600, height: 88))
    }
}
