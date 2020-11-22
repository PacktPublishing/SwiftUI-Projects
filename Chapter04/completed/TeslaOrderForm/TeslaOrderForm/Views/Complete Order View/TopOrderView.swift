//
//  TopOrderView.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 2/23/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct TopOrderView: View {
    
    @EnvironmentObject var order:OrderViewModel
    
    var body: some View {
        VStack {
            closeBtn
            carInfo
        }.padding(.horizontal, 10)
    }
    
    var closeBtn: some View {
        Group {
            HStack {
                Button(action: { self.order.isOrderCompleteVisible.toggle() }) {
                    Image("close-btn")
                }
                Spacer()
            }
            .buttonStyle(PlainButtonStyle())
            
            Text("ORDER COMPLETED")
                .custom(font: .bold, size: 42)
        }
    }
    
    var carInfo: some View {
        VStack(spacing: 0) {
            HStack {
                Spacer()

                Image(systemName: "info.circle")
                    .font(.system(size: 28))
                    .offset(x: -30)
            }

            ZStack {
                Image("car-bg-shape")
                Image("tesla-s")
                    .resizable()
                    .frame(width: 268, height: 125)
            }

            Text("TESLA MODEL S")
                .custom(font: .bold, size: 21)
                .padding(.top, 30)
        }
    }
}

struct TopOrderView_Previews: PreviewProvider {
    static var previews: some View {
        TopOrderView()
    }
}
