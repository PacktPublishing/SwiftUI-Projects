//
//  BottomOrderView.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 2/23/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct BottomOrderView: View {
    @EnvironmentObject var order:OrderViewModel
    
    var body: some View {
        VStack {
            info
            map
            button
            Spacer()
        }.padding(.horizontal, 10)
    }
    
    var info: some View {
        HStack {
            HStack(spacing: 4) {
                Text("1")
                    .custom(font: .medium, size: 22)
                Text("car")
                    .custom(font: .ultralight, size: 22)
            }

            Spacer()

            HStack(spacing: 4) {
                Text("2")
                    .custom(font: .medium, size: 22)
                Text("hours")
                    .custom(font: .ultralight, size: 22)
            }

            Spacer()

            HStack(spacing: 4) {
                Text("$160")
                    .custom(font: .medium, size: 22)
            }
        }
        .padding(.horizontal, 15)
        .frame(height: 55)
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color.baseGray)
        .cornerRadius(10)
    }
    
    var map: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            Image("sample-map")
                .resizable()
                .scaledToFit()
                .padding(.bottom, 30)

            HStack {
                Image(systemName: "clock")
                HStack(spacing: 4) {
                    Text("The car will arrive in")
                        .custom(font: .ultralight, size: 22)
                    Text("20 mins")
                        .custom(font: .medium, size: 22)
                }
                Spacer()
                Image("disclosure-indicator")
            }
            .frame(height: 40)
            .padding(.horizontal, 5)
            .background(Color.white)
            .cornerRadius(5)
            .offset(y: -35)
            .padding(.horizontal, 5)
        }
        .frame(maxWidth: 370)
    }
    
    var button: some View {
        Button(action: { self.order.isCancelOrderVisible.toggle() }) {
            Text("CANCEL ORDER")
        }
        .frame(height: 55)
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color.baseGray)
        .buttonStyle(PlainButtonStyle())
        .cornerRadius(10)
        .foregroundColor(.baseCardinal)
        .custom(font: .bold, size: 28)
    }
}

struct BottomOrderView_Previews: PreviewProvider {
    static var previews: some View {
        BottomOrderView()
            .previewLayout(.fixed(width: 320, height: 400))
    }
}
