//
//  CreditCardTypeMenuView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 6/28/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CreditCardTypeMenuView: View {
    
    @EnvironmentObject var model: CreateAccountViewModel
    
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
                ForEach(0..<self.model.selectorLogos.count) { index in
                    Button(action:{ self.model.selectedCardType = index }) {
                        VStack {
                            Image(self.model.selectorLogos[index])
                            Spacer()
                            
                            Image(self.model.selectedCardType == index ? "checkmark-selector" : "checkmark-outline-selector")
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
