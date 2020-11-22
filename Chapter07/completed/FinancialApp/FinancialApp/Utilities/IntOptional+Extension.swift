//
//  Optional+Extension.swift
//  FinancialApp
//
//  Created by Craig Clayton on 3/28/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import Foundation


extension Optional where Wrapped == Int {
    var _value: Int? {
        get {
            return self
        }
        set {
            self = newValue
        }
    }
    
    public var intValue: Int {
        get {
            return _value ?? 0
        }
        set {
            _value = newValue
        }
    }
}
