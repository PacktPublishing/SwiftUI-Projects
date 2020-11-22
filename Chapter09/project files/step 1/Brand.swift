//
//  Brand.swift
//  ShoePOS
//
//  Created by Craig Clayton on 9/6/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import UIKit
import CloudKit

struct Brand: Identifiable {
    var id = UUID()
    var recordID: CKRecord.ID?
    var name: String
    var key: String
    var record: CKRecord
    let imageFileURL: URL?
    
    static let `default` = Self(record: defaultBrand)

    init(record: CKRecord) {
        self.record = record
        recordID = record.recordID
        name = record[.name] as! String
        key = record[.key] as! String
        
        if let asset = record[.image] as? CKAsset { 
            imageFileURL = asset.fileURL
        } else {
            imageFileURL = nil
        }
    }
    
    init(brand: BrandItem) {
        let record = CKRecord(recordType: CKConstant.RecordType.Product)
        record["name"] = brand.name as NSString
        record["key"] = brand.key as NSString
        
        let url = Bundle.main.url(forResource: brand.image, withExtension: "png")!
        record["image"] = CKAsset(fileURL: url)
        
        self.init(record: record)
    }
    
    var productImage: UIImage {
        if let fileURL = self.imageFileURL {
            if let image = UIImage(contentsOfFile: fileURL.path) {
                return image
            }
        }

        return UIImage(named: "nopicture")!
    }
    
    static var defaultBrand: CKRecord {
        let recordID = CKRecord.ID(recordName: "nike-brand")
        
        let brandRecord = CKRecord(recordType: CKConstant.RecordType.Brand, recordID: recordID)
        brandRecord["name"] = "Nike" as NSString
        brandRecord["key"] = "NK" as NSString
        
        let imageURL = Bundle.main.url(forResource: "nike", withExtension: "png")!
        brandRecord["image"] = CKAsset(fileURL: imageURL)
        
        return brandRecord
    }
    
}

extension Brand {
    enum RecordKey: String {
        case id
        case recordID
        case name
        case key
        case record
        case image
    }
}

extension CKRecord {
    subscript(key: Brand.RecordKey) -> Any? {
        get {
            return self[key.rawValue]
        }
        set {
            self[key.rawValue] = newValue as? CKRecordValue
        }
    }
}
