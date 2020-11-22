//
//  Optional+Extension.swift
//  FinancialApp
//
//  Created by Craig Clayton on 3/28/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import Foundation

extension Optional where Wrapped == Bool {
    var _value: Bool? {
        get {
            return self
        }
        set {
            self = newValue
        }
    }
    
    public var boolValue: Bool {
        get {
            return _value ?? false
        }
        set {
            _value = newValue
        }
    }
}


