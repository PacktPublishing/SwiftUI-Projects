//
//  ShoePOSViewModel+Extension.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/8/20.
//

import Foundation
import CloudKit

extension ShoePOSViewModel {
    func save(records: [CKRecord]) {
        let operation = CKModifyRecordsOperation(recordsToSave: records, recordIDsToDelete: nil)
        CloudKitHelper.publicDB.add(operation)
    }
    
    func randomNumbers() -> [Int] {
        let count = 29
        let sum = Int.random(in: 50...400)
        let randomOffsets = (0 ..< count - 1).map { _ in Int.random(in: 1 ..< sum) }
        let range = ([0] + randomOffsets + [sum]).sorted()
        var values: [Int] = []

        for i in 0 ... count - 1 {
            values.append(range[i + 1] - range[i])
        }

        return values
    }
    
    func filterBrands(by name: String) -> Brand? {
        self.brands.filter { $0.name == name }.first
    }
    
    func getRecord(brand: Brand) -> CKRecord {
        let record = CKRecord(recordType: CKConstant.RecordType.Brand)
        record[.name] = brand.name as NSString
        record[.key] = brand.key as NSString
        
        if let url = brand.imageFileURL {
            record[.image] = CKAsset(fileURL: url)
        }
        
        return record
    }
    
    func createRandomValues(completion: @escaping ([(quantity: String, size: Double, index: Int)]) -> Void) {
        var randomValues: [(quantity: String, size: Double, index: Int)] = []
        let arrValues = randomNumbers()
        let sizes: [Double] = Array(stride(from: 1, through: 15, by: 0.5))

        for (index, value) in arrValues.enumerated() {
            randomValues += [(quantity: "\(value)", size: sizes[index], index: index)]
        }
        
        completion(randomValues)
    }
    
    func save(product: ProductItem, brandID: CKRecord.ID?) {
        createRandomValues { (sizes: [(quantity: String, size: Double, index: Int)]) in
            if let id = brandID {
                var sizeRecords: [CKRecord] = []
                let brandRef = CKRecord.Reference(recordID: id, action: .deleteSelf)
                let productRecord = CKRecord(recordType: CKConstant.RecordType.Product, recordID: .init(recordName: UUID().uuidString))
                
                productRecord[.name] = product.name as NSString
                productRecord[.productNo] = product.productNo as NSString
                productRecord[.price] = product.price as NSNumber
                productRecord.setObject(brandRef, forKey: "brand")
                
                let url = Bundle.main.url(forResource: product.image, withExtension: "png")!
                productRecord[.image] = CKAsset(fileURL: url)
                
                for value in sizes {
                    let sizeRecord = CKRecord(recordType: CKConstant.RecordType.Size, recordID: .init(recordName: UUID().uuidString))
                    sizeRecord[.quantity] = (Int(value.quantity) ?? 0) as Int
                    sizeRecord[.size] = value.size as Double
                    sizeRecords.append(sizeRecord)
                }
                
                let productRef = sizeRecords.map { CKRecord.Reference(record: $0, action: .deleteSelf) }
                productRecord[.sizes] = productRef
                var records = [productRecord]
                records.append(contentsOf: sizeRecords)
                
                self.save(records: records)
                self.products.append(Product(record: productRecord))
            }
        }
    }
}
