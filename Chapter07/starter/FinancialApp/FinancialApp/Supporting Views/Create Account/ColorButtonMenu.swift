//
//  ColorButtonMenu.swift
//  FinancialApp
//
//  Created by Craig Clayton on 6/28/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct ColorButtonMenu: View {
    private var selectedSegment: Int = 0
    private var selectedColor: Color = .baseEndeavourBlue

    private var colors: [Color] = [.baseEndeavourBlue,
                  .orange,
                  .black,
                  .red,
                  .green,
                  .purple,
                  .gray
    ]

    
    var body: some View {
        HStack {
            ForEach(0..<colors.count) { index in
                Button(action: {
                }) {
                    ZStack {
                        ColorView(color: self.colors[index])
                        Image("checkmark-selector")
                        .resizable()
                        .renderingMode(.template)
                        .opacity(self.selectedSegment == index ? 1 : 0)
                        .frame(width: 12.0, height: 10.0)
                        .foregroundColor(.white)
                    }
                }
                .buttonStyle(PlainButtonStyle())
            }
        }

    }
}

struct ColorButtonMenu_Previews: PreviewProvider {
    static var previews: some View {
        ColorButtonMenu()
            .previewLayout(.fixed(width: 300, height: 50))
    }
}
