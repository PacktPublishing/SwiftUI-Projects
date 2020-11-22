//
//  ContentView.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 1/23/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var order:OrderViewModel
    
    var body: some View {
        ZStack {
            NavigationView {
                ScrollView(.vertical) {
                    VStack(spacing: 0) {
                        CarDetailView()
                            .frame(height: 600)
                        FormView()
                            .environmentObject(order)
                            .frame(height: 450)
                        
                        Button(action: {
                                self.order.isOrderCompleteVisible.toggle()
                        }) {
                            Text("COMPLETE ORDER")
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .frame(height: 60)
                        }
                        .custom(font: .bold, size: 28)
                        .frame(height: 60)
                        .foregroundColor(.white)
                        .background(Color.baseGreen)
                        .cornerRadius(10)
                        .padding(.horizontal)
                    }
                    .padding(.top, 40)
                }
                .hideNavigationBar()
            }

            CompleteOrderView()
                .opacity(order.isOrderCompleteVisible ? 1 : 0)
                .animation(.default)
                .padding(.bottom, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



