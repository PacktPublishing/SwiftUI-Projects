//
//  Product.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/20/20.
//

import CloudKit
import UIKit

struct Product: Identifiable {
    var id = UUID().uuidString
    var recordID: CKRecord.ID?
    var productName: String
    var price: Double
    var productNo: String
    var record: CKRecord
    var brand: Brand?
    let imageFileURL: URL?
    var sizes: [Size] = []
    
    static let `default` = Self(record: defaultProduct) // (1)
    static var defaultProduct: CKRecord {  // (2)
        let recordID = CKRecord.ID(recordName: "nike-product")
        
        let productRecord = CKRecord(recordType: CKConstant.RecordType.Product, recordID: recordID)
        productRecord[.productName] = "Nike" as NSString
        productRecord[.price] = 199.99 as Double
        productRecord[.productNo] = "NK1234" as NSString
        
        let imageURL = Bundle.main.url(forResource: "nike-mamba-fury", withExtension: "png")!
        productRecord[.productImage] = CKAsset(fileURL: imageURL)
        
        return productRecord
    }
    
    var productImage: UIImage {
        if let fileURL = self.imageFileURL {
            if let image = UIImage(contentsOfFile: fileURL.path) {
                return image
            }
        }
        return UIImage(named: "nopicture")!
    }
    
    init(record: CKRecord) {
        self.record = record
        productName = record[.productName] as! String
        productNo = record[.productNo] as! String
        self.price = record[.price] as! Double
        
        if let asset = record[.productImage] as? CKAsset {
            imageFileURL = asset.fileURL
        } else {
            imageFileURL = nil
        }
    }

    init(product: ProductItem) {
        let record = CKRecord(recordType: CKConstant.RecordType.Product)
        record[.name] = product.name as NSString
        record[.productNo] = product.productNo as NSString
        record[.price] = product.price as Double
        
        let url = Bundle.main.url(forResource: product.image, withExtension: "png")!
        record[.image] = CKAsset(fileURL: url)
        
        self.init(record: record)
    }


}

extension Product {
    enum RecordKey: String {
        case id
        case recordID
        case productName = "name"
        case price
        case productNo
        case record
        case brand
        case productImage = "image"
        case sizes
    }
}
extension CKRecord {
    subscript(key: Product.RecordKey) -> Any? {
        get {
            return self[key.rawValue]
        }
        set {
            self[key.rawValue] = newValue as? CKRecordValue
        }
    }
}


