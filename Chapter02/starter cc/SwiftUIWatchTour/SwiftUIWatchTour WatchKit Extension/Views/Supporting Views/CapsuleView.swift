//
//  CapsuleView.swift
//  BarChart
//
//  Created by Craig Clayton on 10/30/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CapsuleView: View {
    let value: Int
    let day: String

    var body: some View {
        HStack(alignment: .bottom, spacing: 2) {
            VStack {
                VStack(spacing: 2) {
                    Text("\(value)")
                        .font(.system(size: 11))
                        .foregroundColor(Color(.gray))
                    Capsule()
                        .frame(width: 10, height: CGFloat(value))
                        .foregroundColor(Color(.red))
                }

                Text(day.uppercased())
                    .font(.system(size: 12))
                    .fontWeight(.black)
                    .padding(.top, 0)
            }
        }
        .padding(.top, 10)
    }
}

struct CapsuleView_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleView(value: 75, day: "S")
    }
}
