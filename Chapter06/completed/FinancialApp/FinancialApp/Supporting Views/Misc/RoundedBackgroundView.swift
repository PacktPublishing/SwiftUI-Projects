//
//  RoundedBackgroundView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 12/23/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct RoundedBackgroundView: View {
    var body: some View {
        Color(.white)
            .cornerRadius(16)
    }
}

struct RoundedBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedBackgroundView()
    }
}
