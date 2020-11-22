//
//  CarInfoView.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 1/23/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CarInfoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            CarInfoBasicView()
            CarInfoDetailView()
            CarInfoPhotosView()
            Spacer()
        }
        .frame(height: 320)
        .padding(.horizontal, 20)

    }
}

struct CarInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CarInfoView()
            .previewLayout(.fixed(width: 400, height: 320))
    }
}
