//
//  CardView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 6/28/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CardView: View {
    @EnvironmentObject var model:CreateAccountViewModel
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    HStack {
                        Image("checkmark")
                        
                        VStack(alignment: .leading, spacing: -6) {
                            Text(self.model.limit).customFont(.custom(.bold, 20))
                            Text("Credit Card Limit").customFont(.custom(.ultralight, 10))
                        }.opacity(model.selectedAccountType == 1 ? 1 : 0)

                        Spacer()

                        Image(self.model.cardLogos[model.selectedCardType])
                    }
                    HStack {
                        HStack {
                            Text("****")
                                .customFont(.custom(.black, 17))
                            Text("****").customFont(.custom(.black, 17))
                            Text("****").customFont(.custom(.black, 17))
                            Text(self.model.ccNumber.suffix(4)).customFont(.custom(.black, 20))
                        }

                        Spacer()
                    }.padding(.top, 15)
                    Spacer()
                    HStack {
                        VStack(alignment: .leading) {
                            Text("CARD HOLDER")
                                .customFont(.custom(.bold, 11))
                                .foregroundColor(Color.baseRockBlue)
                            Text("\(self.model.firstName) \(self.model.lastName)").customFont(.custom(.black, 16))
                        }

                        Spacer()

                        VStack(alignment: .leading) {
                            Text("EXPIRES")
                                .customFont(.custom(.bold, 11))
                                .foregroundColor(Color.baseRockBlue)
                            Text("\(self.model.displayExpDate)").customFont(.custom(.black, 16))
                        }

                        VStack(alignment: .leading) {
                            Text("CVV")
                                .customFont(.custom(.bold, 11))
                                .foregroundColor(Color.baseRockBlue)
                            Text("\(self.model.cvv)").customFont(.custom(.black, 16))
                        }

                    }
                }.padding(10)
            }
            .frame(height: 160)
            .foregroundColor(.baseWhite)
            .background(background)
            .padding(.horizontal)
        }
    }
    
    var background: some View {
        HStack(spacing: -116) {
            Spacer()
            Image("left-card")
                .renderingMode(.template)
                .foregroundColor(model.colors[model.selectedCardColorType])
            Image("right-card")
                .renderingMode(.template)
                .foregroundColor(model.colors[model.selectedCardColorType])
                .opacity(0.94)
            Spacer()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
