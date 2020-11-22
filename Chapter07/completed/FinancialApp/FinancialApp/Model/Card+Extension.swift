//
//  Card+Extension.swift
//  FinancialApp
//
//  Created by Craig Clayton on 6/30/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import Foundation

extension Card {
    public var cardExpDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/yy"
        return formatter.string(from: self.expirationDate ?? Date())
    }
}
