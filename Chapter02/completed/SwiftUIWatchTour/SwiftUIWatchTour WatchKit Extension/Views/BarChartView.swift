//
//  BarChartView.swift
//  SwiftUIWatchTour WatchKit Extension
//
//  Created by Craig Clayton on 12/6/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct BarChartView: View {
    var body: some View {
        VStack(spacing: 0) {
            HeaderView(title: "BAR", subtitle: "CHART")
            HStack(alignment: .bottom) {
                CapsuleView(value: 65, day: "S")
                CapsuleView(value: 70, day: "M")
                CapsuleView(value: 50, day: "T")
                CapsuleView(value: 25, day: "W")
                CapsuleView(value: 40, day: "T")
                CapsuleView(value: 25, day: "F")
                CapsuleView(value: 40, day: "S")
            }
        }
    }
}

struct ShowsView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView()
    }
}


