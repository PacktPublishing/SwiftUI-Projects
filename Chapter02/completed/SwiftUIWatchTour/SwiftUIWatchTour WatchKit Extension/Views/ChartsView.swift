//
//  ChartsView.swift
//  SwiftUIWatchTour WatchKit Extension
//
//  Created by Craig Clayton on 10/5/20.
//

import SwiftUI

struct ChartsView: View {
    var body: some View {
        TabView {
            BarChartView()
            WedgeChartView()
            RingView()
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
    }
}

struct ChartsView_Previews: PreviewProvider {
    static var previews: some View {
        ChartsView()
    }
}
