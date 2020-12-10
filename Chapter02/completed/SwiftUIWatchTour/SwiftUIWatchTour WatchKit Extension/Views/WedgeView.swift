//
//  WedgeChartView.swift
//  SwiftUIWatchTour WatchKit Extension
//
//  Created by Craig Clayton on 12/6/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import Foundation
import SwiftUI

struct WedgeChartView: View {
    let wedges = [
        Wedge(startAngle: -43, endAngle: 43, color: Color.blue),
        Wedge(startAngle: 43, endAngle: 150, color: Color.green),
        Wedge(startAngle: 150, endAngle: -43, color: Color.red)
    ]

    var body: some View {
        VStack {
            HeaderView(title: "WEDGE", subtitle: "CHART")
            
            ZStack {
                ForEach(0 ..< wedges.count) {
                    WedgeShape(
                        startAngle: Angle(degrees: self.wedges[$0].startAngle),
                        endAngle: Angle(degrees: self.wedges[$0].endAngle),
                        lineWidth: 24
                    )
                    .foregroundColor(self.wedges[$0].color)
                }
            }.frame(width: 140)
        }
    }
}


struct WedgeChartView_Previews: PreviewProvider {
    static var previews: some View {
        WedgeChartView()
    }
}
