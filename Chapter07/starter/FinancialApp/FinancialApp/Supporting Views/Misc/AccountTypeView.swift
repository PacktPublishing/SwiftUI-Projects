//
//  AccountTypeView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 6/29/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct AccountTypeView: View {

    var body: some View {
        HStack(spacing: 15) { // Step 1
            ForEach(0..<2) { index in // Step 2
                Button(action: {}) {
                    HStack { // Step 3
                        ZStack {
                            Circle()
                                .fill(Color.basePrussianBlue)
                                .frame(width: 18, height: 18)
                            Image("checkmark-selector")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 8)
                                .foregroundColor(.white)
                        }

                        Text("Account Types") // Step 4
                            .customFont(.custom(.medium, 14))
                            .foregroundColor(.baseDustyGray)
                    }
                }.buttonStyle(PlainButtonStyle())
            }
            Spacer()
        }

    }
}

struct AccountTypeView_Previews: PreviewProvider {
    static var previews: some View {
        AccountTypeView()
    }
}
