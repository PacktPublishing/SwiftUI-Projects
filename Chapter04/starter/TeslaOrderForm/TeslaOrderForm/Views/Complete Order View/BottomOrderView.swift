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
        Text("Bottom Order View")
    }
}

struct BottomOrderView_Previews: PreviewProvider {
    static var previews: some View {
        BottomOrderView()
            .previewLayout(.fixed(width: 320, height: 400))
    }
}
