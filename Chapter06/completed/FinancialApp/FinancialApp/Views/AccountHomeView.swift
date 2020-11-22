//
//  AccountHomeView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 6/28/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct AccountHomeView: View {
    var body: some View {
        ZStack {
            Color(.baseLightWhite)
                .edgesIgnoringSafeArea(.all)

            ScrollView {
                VStack {
                    HomeHeaderView()
                    CardView()
                    Divider()
                    AccountSummaryView()
                    HomeSubmenuView()
                }
            }
        }

    }
}

struct AccountHomeView_Previews: PreviewProvider {
    static var previews: some View {
        AccountHomeView()
    }
}
