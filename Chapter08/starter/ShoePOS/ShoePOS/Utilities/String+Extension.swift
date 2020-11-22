//
//  String+Extension.swift
//  StorePOS
//
//  Created by Craig Clayton on 9/25/20.
//

import Foundation

extension String {
    func randomNumberString(length: Int = 4)-> String {
        enum s {
            static let c = Array("123457890")
            static let k = UInt32(c.count)
        }
        
        var result = [Character](repeating: "-", count: length)
        
        for i in 0..<length {
            let r = Int(arc4random_uniform(s.k))
            result[i] = s.c[r]
        }
        
        return String(result)
    }
}
