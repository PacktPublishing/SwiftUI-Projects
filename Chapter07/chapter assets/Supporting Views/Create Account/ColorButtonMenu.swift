//
//  ColorButtonMenu.swift
//  FinancialApp
//
//  Created by Craig Clayton on 6/28/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct ColorButtonMenu: View {
    @EnvironmentObject var model:CreateAccountViewModel
    
    var body: some View {
        HStack(spacing: 15) {
            ForEach(0..<self.model.colors.count) { index in
                Button(action: {
                    self.model.selectedCardColorType = index
                    self.model.selectedCardColor = self.model.uiColors[index]
                }) {
                    ZStack {
                        ColorView(color: self.model.colors[index])
                        Image("checkmark-selector")
                            .resizable()
                            .renderingMode(.template)
                            .opacity(self.model.selectedCardColorType == index ? 1 : 0)
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
