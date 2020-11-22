//
//  CardListRow.swift
//  FinancialApp
//
//  Created by Craig Clayton on 4/19/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CardListRow: View {
    var body: some View {
        ZStack { // (1)
            HStack(spacing: -116) { // (2)
                Image("left-card") // (3)
                    .renderingMode(.template)
                    .foregroundColor(.black)
                Image("right-card")
                    .renderingMode(.template)
                    .foregroundColor(.black)
                    .opacity(0.94)
            }
            
            VStack { // (1)
                HStack { // (2)
                    Image("checkmark") // (3)
                    VStack(alignment: .leading, spacing: -6) {
                        Text("$99,999").customFont(.custom(.bold, 20))
                        Text("Available Balance").customFont(.custom(.ultralight, 10))
                    }
                    Spacer()
                    Image("visa-logo")
                }
                
                HStack { // (1)
                    HStack { // (2)
                        Text("****")
                            .customFont(.custom(.black, 17))
                        Text("****").customFont(.custom(.black, 17))
                        Text("****").customFont(.custom(.black, 17))
                        Text("9999").customFont(.custom(.black, 20))
                    }
                    Spacer() // (3)
                }.padding(.top, 15)
                
                Spacer() // (4)
                
                HStack { // (1)
                    VStack(alignment: .leading) { // (2)
                        Text("CARD HOLDER")
                            .customFont(.custom(.bold, 11))
                            .foregroundColor(Color.baseRockBlue)
                        Text("Craig Clayton").customFont(.custom(.black, 16))
                    }
                    Spacer() // (3)
                    VStack(alignment: .leading) { // (4)
                        Text("EXPIRES")
                            .customFont(.custom(.bold, 11))
                            .foregroundColor(Color.baseRockBlue)
                        Text("08/22").customFont(.custom(.black, 16))
                    }
                    VStack(alignment: .leading) { // (5)
                        Text("CVV")
                            .customFont(.custom(.bold, 11))
                            .foregroundColor(Color.baseRockBlue)
                        Text("999").customFont(.custom(.black, 16))
                    }
                }

            }
            .frame(width: 280, height: 160)
            .padding(10)
            .foregroundColor(.baseWhite)
        }
    }
}

struct CardListRow_Previews: PreviewProvider {
    static var previews: some View {
        CardListRow().previewLayout(.fixed(width: 300, height: 180))
    }
}
