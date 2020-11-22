//
//  OrderViewModel.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 2/11/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class OrderViewModel: ObservableObject {
    
    // PLACEHOLDER DATA REMOVE
    let prototypeArray = Array(stride(from: 0, through: 10, by: 1))
    
    @Published var prototypeAmt = 1
    @Published var prototypeBoolean = true
    
    @Published var isOrderCompleteVisible = false
    @Published var isCancelOrderVisible = false
    @Published var isModalVisible = false
}






