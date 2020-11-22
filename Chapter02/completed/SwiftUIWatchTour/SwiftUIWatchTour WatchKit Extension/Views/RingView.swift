//
//  RingView.swift
//  SwiftUIWatchTour WatchKit Extension
//
//  Created by Craig Clayton on 12/6/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct RingView: View {
    var body: some View {
        
        VStack(spacing: 5) {
            HeaderView(title: "Activity", subtitle: "Ring")
            ZStack {
                Circle()
                    .stroke(lineWidth: 14)
                    .fill(Color(.darkGray))

                Circle()
                    .trim(from: 0.25, to: 1)
                    .stroke(Color(.red), style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                    .rotationEffect(.degrees(180))
                    .rotation3DEffect(.degrees(180), axis: (x: 1, y: 0, z: 0))
            }
            .frame(width: 100)
            .rotationEffect(.degrees(90), anchor: .center)
        }
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView()
    }
}
