//
//  HomeHeaderView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 6/28/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct HomeHeaderView: View {
    @ObservedObject var account: Account
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading, spacing: -8) {
                Text("Hi, Craig Clayton")
                    .customFont(.custom(.bold, 24))
                Text("Welcome to your favorite app.")
                    .customFont(.custom(.demibold, 16))
            }.foregroundColor(.basePrussianBlue)
            Spacer()
            Image("avatar")
        }.padding(.horizontal, 20)
        .padding(.bottom, 15)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView(account: MockAccountPreviewService
                        .creditAccount)
    }
}
