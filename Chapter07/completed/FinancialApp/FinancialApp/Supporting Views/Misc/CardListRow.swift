//
//  CardListRow.swift
//  FinancialApp
//
//  Created by Craig Clayton on 4/19/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CardListRow: View {
    @ObservedObject var account: Account
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    HStack {
                        Image("checkmark")
                        VStack(alignment: .leading, spacing: -6) {
                            Text("\(account.displayBalance)").customFont(.custom(.bold, 20))
                            
                            if account.type.value == "Checking" {
                                Text("Balance").customFont(.custom(.regular, 10))
                            } else {
                                Text("Credit Card Limit").customFont(.custom(.regular, 10))
                            }
                        }
                        
                        Spacer()
                        Image(account.accountCard.logo.value)
                    }
                    
                    HStack {
                        HStack {
                            Text("****").customFont(.custom(.black, 17))
                            Text("****").customFont(.custom(.black, 17))
                            Text("****").customFont(.custom(.black, 17))
                            Text(account.accountCard.number.value.suffix(4))
                                .customFont(.custom(.black, 20))
                        }

                        Spacer()
                    }
                    .padding(.top, 15)
                    
                    Spacer()
                    HStack {
                        VStack(alignment: .leading) {
                            Text("CARD HOLDER")
                                .customFont(.custom(.bold, 11))
                                .foregroundColor(Color.baseRockBlue)
                            Text("\(self.account.firstName.value) \(self.account.lastName.value)").customFont(.custom(.black, 16))
                        }

                        Spacer()

                        VStack(alignment: .leading) {
                            Text("EXPIRES")
                                .customFont(.custom(.bold, 11))
                                .foregroundColor(Color.baseRockBlue)
                            Text(self.account.accountCard.cardExpDate).customFont(.custom(.black, 16))
                        }

                        VStack(alignment: .leading) {
                            Text("CVV")
                                .customFont(.custom(.bold, 11))
                                .foregroundColor(Color.baseRockBlue)
                            Text(account.accountCard.cvv.value).customFont(.custom(.black, 16))
                        }
                    }
                }.padding(20)
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
                .foregroundColor(Color(hex: account.accountCard.color.value))
            Image("right-card")
                .renderingMode(.template)
                .foregroundColor(Color(hex: account.accountCard.color.value))
                .opacity(0.94)
            Spacer()
        }
    }
}



struct CardListRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardListRow(account: MockAccountPreviewService.checkingAccount)
            CardListRow(account: MockAccountPreviewService.creditAccount)
        }
    }
}
