//
//  AccountTypeView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 6/29/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct AccountTypeView: View {
    
    @EnvironmentObject var model: CreateAccountViewModel

    var body: some View {
        HStack(spacing: 15) { // Step 1
            ForEach(0..<2) { index in // Step 2
                Button(action: { self.model.selectedAccountType = index  }) {
                    HStack { // Step 3
                        ZStack {
                            Circle()
                                .fill(Color.basePrussianBlue)
                                .frame(width: 18, height: 18)
                            Image("checkmark-selector")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 8)
                                .opacity(self.model.selectedAccountType == index ? 1 : 0)
                                .foregroundColor(.white)
                        }

                        Text(self.model.accountTypes[index]) // Step 4
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
