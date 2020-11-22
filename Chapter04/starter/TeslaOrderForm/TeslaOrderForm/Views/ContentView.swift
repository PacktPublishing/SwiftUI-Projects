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
        Text("Content View")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



