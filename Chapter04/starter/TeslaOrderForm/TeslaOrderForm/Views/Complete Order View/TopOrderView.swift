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
        Text("Top Order View")
    }
}

struct TopOrderView_Previews: PreviewProvider {
    static var previews: some View {
        TopOrderView()
    }
}
