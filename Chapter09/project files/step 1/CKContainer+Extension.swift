//
//  CKContainer+Extension.swift
//  ShoePOSAdmin
//
//  Created by Craig Clayton on 8/23/20.
//

import CloudKit

extension CKContainer {
    static var shared: CKContainer {
        return CKContainer(identifier: "Your container name here")
    }
}
