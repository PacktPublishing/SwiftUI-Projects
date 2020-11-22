//
//  FormView.swift
//  ShoeStore
//
//  Created by Craig Clayton on 1/22/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI
import Combine

struct FormView: View {
    @EnvironmentObject var order: OrderViewModel
    
    init() {
    }

    var body: some View {
        Text("Form View")
    }


}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}





















