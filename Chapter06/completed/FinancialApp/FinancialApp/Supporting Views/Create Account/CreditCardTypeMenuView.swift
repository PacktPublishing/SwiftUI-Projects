//
//  CreditCardTypeMenuView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 6/28/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CreditCardTypeMenuView: View {
    let logos = [
        "mc-logo-selector",
        "visa-logo-selector",
        "am-logo-selector"
    ]

    
    var body: some View {
        VStack { // Step 1
            VStack(alignment: .leading, spacing: 3) { // Step 2
                Text("SELECT A CARD TYPE")
                    .customFont(.custom(.bold, 18))
                    .foregroundColor(.basePrussianBlue)
                    .padding(.leading, 10)

                Divider()
            }.padding(.top, 15)

            HStack { // Step 3
                ForEach(0..<logos.count) { index in
                    Button(action:{ }) {
                        VStack {
                            Image(self.logos[index])
                            Image("checkmark-outline-selector")
                        }
                    }
                    .buttonStyle(CreditCardStyle())
                }
            }.padding(.top, 20)
        }.background(Color.clear)
    }
}

struct CreditCardTypeMenuView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardTypeMenuView()
            .previewLayout(.fixed(width: 400, height: 180))
    }
}
