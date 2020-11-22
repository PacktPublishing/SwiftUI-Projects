//
//  CreditCardStyle.swift
//  FinancialApp
//
//  Created by Craig Clayton on 6/28/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CreditCardStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 75, height: 80)
            .background(Color.white)
            .cornerRadius(10)
            .buttonStyle(PlainButtonStyle())
    }
}
