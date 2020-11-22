//
//  Optional+Extension.swift
//  FinancialApp
//
//  Created by Craig Clayton on 3/28/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import Foundation

extension Optional where Wrapped == String {
    var _value: String? {
        get {
            return self
        }
        set {
            self = newValue
        }
    }
    
    public var value: String {
        get {
            return _value ?? ""
        }
        set {
            _value = newValue.isEmpty ? nil : newValue
        }
    }
}
