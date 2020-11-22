//
//  Size.swift
//  StorePOS
//
//  Created by Craig Clayton on 9/22/20.
//

import UIKit
import CloudKit

struct Size: Identifiable, Equatable {
    var id = UUID().uuidString
    var recordID: CKRecord.ID?
    var quantity: Int
    var size: Double
    var record: CKRecord
    
    init(record: CKRecord) {
        self.record = record
        quantity = record[.quantity] as! Int
        size = record[.size] as! Double
    }
    
    static let `default` = Self(record: defaultSize)
    static var defaultSize: CKRecord {
        let recordID = CKRecord.ID(recordName: "shoe-size")
        let sizeRecord = CKRecord(recordType: CKConstant.RecordType.Size, recordID: recordID)
        sizeRecord[.quantity] = 99 as Int
        sizeRecord[.size] = 13.5 as Double

        return sizeRecord
    }
}

extension Size {
    enum RecordKey: String {
        case id
        case recordID
        case quantity
        case size
        case record
    }
}

extension CKRecord {
    subscript(key: Size.RecordKey) -> Any? {
        get {
            return self[key.rawValue]
        }
        set {
            self[key.rawValue] = newValue as? CKRecordValue
        }
    }
}
