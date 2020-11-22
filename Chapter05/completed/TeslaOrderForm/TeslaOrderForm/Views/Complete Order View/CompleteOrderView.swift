//
//  CompleteOrderView.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 1/24/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CompleteOrderView: View {
    @EnvironmentObject var order:OrderViewModel

    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                TopOrderView()
                BottomOrderView()
                    .environmentObject(order)
                
            }.padding(.horizontal, 10)
            
            CancelOrderView()
                        .opacity(order.isCancelOrderVisible ? 1 : 0)
                        .animation(.default)
        }
    }
}

struct CompleteOrderView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteOrderView().environmentObject(OrderViewModel())
    }
}
