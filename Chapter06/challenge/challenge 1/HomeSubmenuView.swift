//
//  HomeSubmenuView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 1/2/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct HomeSubmenuView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text("QUICK SERVICES")
                    .customFont(.custom(.bold, 20))
                    .padding(.bottom, 2)
                    .foregroundColor(.basePrussianBlue)
                Spacer()
            }

            Divider().padding(.bottom, 10)

            HStack {
                Button(action: {

                }) {
                    VStack {
                        Image("icon-send")
                        Text("ADD NEW").customFont(.custom(.demibold, 12))
                    }
                    .frame(width: 75, height: 80)
                    .background(Color.white)
                    .cornerRadius(10)
                }

                Spacer()

                Button(action: {

                }) {
                    VStack {
                        Image("icon-receive")
                        Text("CARDS").customFont(.custom(.demibold, 12))
                    }
                    .frame(width: 75, height: 80)
                    .background(Color.white)
                    .cornerRadius(10)
                }


                Spacer()

                Button(action: {

                }) {
                    VStack {
                        Image("icon-invoices")
                        Text("LOCATIONS").customFont(.custom(.demibold, 12))
                    }
                    .frame(width: 75, height: 80)
                    .background(Color.white)
                    .cornerRadius(10)
                }

                Spacer()

                Button(action: {

                }) {
                    VStack {
                        Image("icon-bills")
                        Text("TRANSACTIONS").customFont(.custom(.demibold, 12))
                    }
                    .frame(width: 75, height: 80)
                    .background(Color.white)
                    .cornerRadius(10)
                }
            }
            .foregroundColor(.basePrussianBlue)
            .padding(10)
        }
        .background(Color.baseWhite)
    }
}

struct HomeSubmenuView_Previews: PreviewProvider {
    static var previews: some View {
        HomeSubmenuView()
            .previewLayout(.fixed(width: 600, height: 140))
    }
}
