//
//  CarDetailView.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 1/23/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CarDetailView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.baseGray)
                .frame(height: 442)

            VStack(spacing: 10) {
                VStack {
                    Image("tesla-logo").offset(y: 120)
                    Image("tesla-s")
                    Image("tesla-text-logo").offset(y: -10)
                }
                CarInfoView()
            }.offset(y: -155)
        }
        .padding(.horizontal, 12)
        .offset(y: 100)
        .frame(height: 250)
    }
}

struct CarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CarDetailView()
            .previewLayout(.fixed(width: 400, height: 650))
    }
}
